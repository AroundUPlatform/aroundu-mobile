import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/logging/app_logger.dart';
import '../../../core/providers/core_providers.dart';
import '../../auth/view_model/auth_view_model.dart';
import '../model/chat_models.dart';

// ─────────────────── Conversations List ───────────────────

class ConversationsController extends AsyncNotifier<List<Conversation>> {
  Timer? _pollTimer;

  @override
  Future<List<Conversation>> build() {
    ref.onDispose(() => _pollTimer?.cancel());
    _ensureWebSocketConnected();
    _startPolling();
    return _fetch();
  }

  void _ensureWebSocketConnected() {
    final auth = ref.read(authControllerProvider);
    if (auth.isAuthenticated && auth.token != null) {
      final ws = ref.read(chatWebSocketServiceProvider);
      if (!ws.isConnected) {
        ws.connect(auth.token!);
      }
    }
  }

  Future<List<Conversation>> _fetch() async {
    final auth = ref.read(authControllerProvider);
    if (!auth.isAuthenticated || auth.userId == null) {
      return const <Conversation>[];
    }

    final chatApi = ref.read(chatApiProvider);
    final rawList = await chatApi.getConversations(token: auth.token!);

    final conversations = rawList.map(Conversation.fromMap).toList();
    conversations.sort((a, b) {
      final aTime = a.lastMessageAt ?? a.createdAt ?? DateTime(2000);
      final bTime = b.lastMessageAt ?? b.createdAt ?? DateTime(2000);
      return bTime.compareTo(aTime);
    });

    return conversations;
  }

  void _startPolling() {
    _pollTimer?.cancel();
    // Fallback polling at 30s for resilience; WebSocket handles real-time
    _pollTimer = Timer.periodic(const Duration(seconds: 30), (_) async {
      try {
        final result = await _fetch();
        state = AsyncValue.data(result);
      } catch (error, stackTrace) {
        AppLogger.error(
          'Conversation poll failed',
          error: error,
          stackTrace: stackTrace,
        );
      }
    });
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_fetch);
  }
}

final conversationsControllerProvider =
    AsyncNotifierProvider<ConversationsController, List<Conversation>>(
      ConversationsController.new,
    );

// ─────────────────── Grouped Conversations (Client View) ───────────────────

class GroupedConversationsController
    extends AsyncNotifier<List<JobConversationsGroup>> {
  Timer? _pollTimer;

  @override
  Future<List<JobConversationsGroup>> build() {
    ref.onDispose(() => _pollTimer?.cancel());
    _startPolling();
    return _fetch();
  }

  Future<List<JobConversationsGroup>> _fetch() async {
    final auth = ref.read(authControllerProvider);
    if (!auth.isAuthenticated || auth.userId == null) {
      return const <JobConversationsGroup>[];
    }

    final chatApi = ref.read(chatApiProvider);
    final rawList = await chatApi.getConversationsGrouped(token: auth.token!);
    return rawList.map(JobConversationsGroup.fromMap).toList();
  }

  void _startPolling() {
    _pollTimer?.cancel();
    _pollTimer = Timer.periodic(const Duration(seconds: 30), (_) async {
      try {
        final result = await _fetch();
        state = AsyncValue.data(result);
      } catch (error, stackTrace) {
        AppLogger.error(
          'Grouped conversation poll failed',
          error: error,
          stackTrace: stackTrace,
        );
      }
    });
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_fetch);
  }
}

final groupedConversationsControllerProvider =
    AsyncNotifierProvider<
      GroupedConversationsController,
      List<JobConversationsGroup>
    >(GroupedConversationsController.new);

// ─────────────────── Chat Messages ───────────────────

class ChatMessagesState {
  const ChatMessagesState({
    this.messages = const <ChatMessage>[],
    this.isLoading = false,
    this.isSending = false,
    this.isOtherTyping = false,
    this.errorMessage,
  });

  final List<ChatMessage> messages;
  final bool isLoading;
  final bool isSending;
  final bool isOtherTyping;
  final String? errorMessage;

  ChatMessagesState copyWith({
    List<ChatMessage>? messages,
    bool? isLoading,
    bool? isSending,
    bool? isOtherTyping,
    String? errorMessage,
    bool clearError = false,
  }) {
    return ChatMessagesState(
      messages: messages ?? this.messages,
      isLoading: isLoading ?? this.isLoading,
      isSending: isSending ?? this.isSending,
      isOtherTyping: isOtherTyping ?? this.isOtherTyping,
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
    );
  }
}

class ChatMessagesController extends FamilyNotifier<ChatMessagesState, int> {
  Timer? _typingResetTimer;

  @override
  ChatMessagesState build(int conversationId) {
    ref.onDispose(() {
      _typingResetTimer?.cancel();
      final ws = ref.read(chatWebSocketServiceProvider);
      ws.unsubscribeFromConversation(conversationId);
    });
    _loadMessages();
    _subscribeToWebSocket();
    return const ChatMessagesState(isLoading: true);
  }

  void _subscribeToWebSocket() {
    final auth = ref.read(authControllerProvider);
    final currentUserId = auth.userId ?? 0;
    final ws = ref.read(chatWebSocketServiceProvider);

    ws.subscribeToConversation(
      arg,
      onMessage: (payload) {
        final msg = ChatMessage.fromMap(payload);
        final existingIndex = state.messages.indexWhere((m) => m.id == msg.id);
        if (existingIndex >= 0) return; // duplicate
        state = state.copyWith(
          messages: [...state.messages, msg],
          isOtherTyping: false,
        );
        // Auto-mark as delivered if the message is from other user
        if (msg.senderId != currentUserId) {
          ws.sendDelivered(conversationId: arg);
        }
        // Refresh conversation list
        ref.invalidate(conversationsControllerProvider);
        ref.invalidate(groupedConversationsControllerProvider);
      },
      onStatus: (payload) {
        final msgId = payload['messageId'] as int?;
        final statusStr = payload['status']?.toString().toUpperCase();
        if (msgId == null || statusStr == null) return;
        final newStatus = statusStr == 'READ'
            ? MessageStatus.read
            : statusStr == 'DELIVERED'
            ? MessageStatus.delivered
            : MessageStatus.sent;

        final updatedMessages = state.messages.map((m) {
          if (m.id == msgId) return m.copyWith(status: newStatus);
          return m;
        }).toList();
        state = state.copyWith(messages: updatedMessages);
      },
      onTyping: (payload) {
        final typingUserId = payload['userId'];
        final isTyping = payload['typing'] == true;
        if (typingUserId == currentUserId) return;

        state = state.copyWith(isOtherTyping: isTyping);

        // Auto-reset typing indicator after 4 seconds
        _typingResetTimer?.cancel();
        if (isTyping) {
          _typingResetTimer = Timer(const Duration(seconds: 4), () {
            state = state.copyWith(isOtherTyping: false);
          });
        }
      },
    );
  }

  Future<void> _loadMessages() async {
    try {
      final auth = ref.read(authControllerProvider);
      if (!auth.isAuthenticated || auth.userId == null) return;

      final chatApi = ref.read(chatApiProvider);
      final rawList = await chatApi.getMessages(
        token: auth.token!,
        conversationId: arg,
        page: 0,
        size: 100,
      );

      final messages = rawList.map(ChatMessage.fromMap).toList();
      messages.sort((a, b) {
        final aTime = a.createdAt ?? DateTime(2000);
        final bTime = b.createdAt ?? DateTime(2000);
        return aTime.compareTo(bTime);
      });

      state = state.copyWith(
        messages: messages,
        isLoading: false,
        clearError: true,
      );

      // Mark as read via REST for reliability
      await chatApi.markAsRead(token: auth.token!, conversationId: arg);
      // Also notify via WebSocket
      final ws = ref.read(chatWebSocketServiceProvider);
      ws.sendRead(conversationId: arg);
    } catch (error) {
      state = state.copyWith(isLoading: false, errorMessage: error.toString());
    }
  }

  /// Send a typing indicator via WebSocket.
  void sendTyping({required bool typing}) {
    final ws = ref.read(chatWebSocketServiceProvider);
    ws.sendTypingEvent(conversationId: arg, typing: typing);
  }

  Future<bool> sendMessage({
    required int jobId,
    required int recipientId,
    required String content,
  }) async {
    if (content.trim().isEmpty) return false;

    state = state.copyWith(isSending: true, clearError: true);

    try {
      final auth = ref.read(authControllerProvider);
      if (!auth.isAuthenticated || auth.userId == null) return false;

      final ws = ref.read(chatWebSocketServiceProvider);
      if (ws.isConnected) {
        // Send via WebSocket for real-time delivery
        ws.sendMessage(
          jobId: jobId,
          recipientId: recipientId,
          content: content.trim(),
        );
        state = state.copyWith(isSending: false);
        return true;
      }

      // Fallback to REST if WebSocket is disconnected
      final chatApi = ref.read(chatApiProvider);
      final rawMsg = await chatApi.sendMessage(
        token: auth.token!,
        jobId: jobId,
        recipientId: recipientId,
        content: content.trim(),
      );

      final newMessage = ChatMessage.fromMap(rawMsg);
      final updatedMessages = [...state.messages, newMessage];

      state = state.copyWith(messages: updatedMessages, isSending: false);
      ref.invalidate(conversationsControllerProvider);
      ref.invalidate(groupedConversationsControllerProvider);
      return true;
    } catch (error) {
      state = state.copyWith(isSending: false, errorMessage: error.toString());
      return false;
    }
  }

  Future<void> refresh() async {
    state = state.copyWith(isLoading: true, clearError: true);
    await _loadMessages();
  }
}

final chatMessagesControllerProvider =
    NotifierProvider.family<ChatMessagesController, ChatMessagesState, int>(
      ChatMessagesController.new,
    );
