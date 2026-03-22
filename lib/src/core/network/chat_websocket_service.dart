import 'dart:convert';

import 'package:stomp_dart_client/stomp_dart_client.dart';

import '../config/app_environment.dart';
import '../logging/app_logger.dart';

/// Callback types for WebSocket events.
typedef OnMessageReceived = void Function(Map<String, dynamic> payload);
typedef OnStatusUpdate = void Function(Map<String, dynamic> payload);
typedef OnTypingEvent = void Function(Map<String, dynamic> payload);
typedef OnConnectionChanged = void Function(bool connected);

/// STOMP-over-WebSocket service for real-time chat communication.
///
/// Maintains a single persistent connection and manages subscriptions
/// per conversation. Automatically reconnects on disconnect.
class ChatWebSocketService {
  StompClient? _client;
  String? _token;
  bool _connected = false;
  final _subscriptions = <String, StompUnsubscribe>{};
  OnConnectionChanged? onConnectionChanged;

  // Per-conversation callbacks
  final _messageCallbacks = <int, OnMessageReceived>{};
  final _statusCallbacks = <int, OnStatusUpdate>{};
  final _typingCallbacks = <int, OnTypingEvent>{};

  bool get isConnected => _connected;

  /// Connect to the WebSocket server with the given JWT token.
  void connect(String token) {
    if (_connected && _token == token) return;
    disconnect();
    _token = token;

    final wsUrl = _buildWsUrl();
    AppLogger.info('WebSocket connecting to $wsUrl');

    _client = StompClient(
      config: StompConfig(
        url: wsUrl,
        stompConnectHeaders: {'Authorization': 'Bearer $token'},
        onConnect: _onConnect,
        onDisconnect: _onDisconnect,
        onWebSocketDone: _onWebSocketDone,
        onWebSocketError: (error) {
          _onWebSocketDone(); // treat error same as done
          AppLogger.error('WebSocket error', error: error);
        },
        reconnectDelay: const Duration(seconds: 5),
      ),
    );
    _client!.activate();
  }

  /// Disconnect and clean up all subscriptions.
  void disconnect() {
    for (final unsub in _subscriptions.values) {
      unsub(unsubscribeHeaders: {});
    }
    _subscriptions.clear();
    _messageCallbacks.clear();
    _statusCallbacks.clear();
    _typingCallbacks.clear();
    _client?.deactivate();
    _client = null;
    _connected = false;
    _token = null;
  }

  /// Subscribe to messages and status updates for a conversation.
  void subscribeToConversation(
    int conversationId, {
    OnMessageReceived? onMessage,
    OnStatusUpdate? onStatus,
    OnTypingEvent? onTyping,
  }) {
    if (onMessage != null) _messageCallbacks[conversationId] = onMessage;
    if (onStatus != null) _statusCallbacks[conversationId] = onStatus;
    if (onTyping != null) _typingCallbacks[conversationId] = onTyping;

    if (!_connected) return;
    _subscribeTopics(conversationId);
  }

  /// Unsubscribe from a conversation's topics.
  void unsubscribeFromConversation(int conversationId) {
    _messageCallbacks.remove(conversationId);
    _statusCallbacks.remove(conversationId);
    _typingCallbacks.remove(conversationId);

    final msgKey = 'conv-$conversationId';
    final typingKey = 'typing-$conversationId';
    _subscriptions[msgKey]?.call(unsubscribeHeaders: {});
    _subscriptions.remove(msgKey);
    _subscriptions[typingKey]?.call(unsubscribeHeaders: {});
    _subscriptions.remove(typingKey);
  }

  /// Send a message via WebSocket.
  void sendMessage({
    required int jobId,
    required int recipientId,
    required String content,
  }) {
    _client?.send(
      destination: '/app/chat.send/$jobId',
      body: jsonEncode({'recipientId': recipientId, 'content': content}),
    );
  }

  /// Send a typing indicator.
  void sendTypingEvent({required int conversationId, required bool typing}) {
    if (!_connected) return;
    _client?.send(
      destination: '/app/chat.typing/$conversationId',
      body: jsonEncode({'typing': typing}),
    );
  }

  /// Notify the server that messages in a conversation have been delivered.
  void sendDelivered({required int conversationId}) {
    if (!_connected) return;
    _client?.send(destination: '/app/chat.delivered/$conversationId', body: '');
  }

  /// Notify the server that messages in a conversation have been read.
  void sendRead({required int conversationId}) {
    if (!_connected) return;
    _client?.send(destination: '/app/chat.read/$conversationId', body: '');
  }

  // ── Private ────────────────────────────────────────────────────

  void _onConnect(StompFrame frame) {
    _connected = true;
    onConnectionChanged?.call(true);
    AppLogger.info('WebSocket connected');

    // Re-subscribe to all conversations that were registered before connect
    for (final id in {..._messageCallbacks.keys, ..._typingCallbacks.keys}) {
      _subscribeTopics(id);
    }
  }

  void _onDisconnect(StompFrame frame) {
    _connected = false;
    _subscriptions.clear();
    onConnectionChanged?.call(false);
    AppLogger.info('WebSocket disconnected');
  }

  void _onWebSocketDone() {
    if (!_connected) return; // already handled
    _connected = false;
    _subscriptions.clear();
    onConnectionChanged?.call(false);
    AppLogger.info('WebSocket closed unexpectedly');
  }

  void _subscribeTopics(int conversationId) {
    if (!_connected || _client == null) return;
    try {
      final msgKey = 'conv-$conversationId';
      if (!_subscriptions.containsKey(msgKey)) {
        final sub = _client?.subscribe(
          destination: '/topic/conversation/$conversationId',
          callback: (frame) => _handleConversationFrame(conversationId, frame),
        );
        if (sub != null) _subscriptions[msgKey] = sub;
      }

      final typingKey = 'typing-$conversationId';
      if (!_subscriptions.containsKey(typingKey) &&
          _typingCallbacks.containsKey(conversationId)) {
        final sub = _client?.subscribe(
          destination: '/topic/conversation/$conversationId/typing',
          callback: (frame) => _handleTypingFrame(conversationId, frame),
        );
        if (sub != null) _subscriptions[typingKey] = sub;
      }
    } catch (e) {
      // StompBadStateException: socket closed without triggering _onDisconnect.
      // Reset state so the next reconnect attempt can re-subscribe cleanly.
      _connected = false;
      _subscriptions.clear();
      onConnectionChanged?.call(false);
      AppLogger.error(
        'STOMP subscribe failed — resetting connection state',
        error: e,
      );
    }
  }

  void _handleConversationFrame(int conversationId, StompFrame frame) {
    if (frame.body == null) return;
    try {
      final payload = jsonDecode(frame.body!) as Map<String, dynamic>;

      // Status update frames have messageId + status but no 'content'
      if (payload.containsKey('messageId') &&
          payload.containsKey('status') &&
          !payload.containsKey('content')) {
        _statusCallbacks[conversationId]?.call(payload);
      } else {
        _messageCallbacks[conversationId]?.call(payload);
      }
    } catch (e) {
      AppLogger.error('Failed to parse WS frame', error: e);
    }
  }

  void _handleTypingFrame(int conversationId, StompFrame frame) {
    if (frame.body == null) return;
    try {
      final payload = jsonDecode(frame.body!) as Map<String, dynamic>;
      _typingCallbacks[conversationId]?.call(payload);
    } catch (e) {
      AppLogger.error('Failed to parse typing frame', error: e);
    }
  }

  String _buildWsUrl() {
    final httpUrl = AppEnvironment.apiBaseUrl;
    // Convert http(s) to ws(s)
    final wsUrl = httpUrl
        .replaceFirst('https://', 'wss://')
        .replaceFirst('http://', 'ws://');
    return '$wsUrl/ws/chat';
  }
}
