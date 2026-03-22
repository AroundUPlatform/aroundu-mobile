import '../../../core/network/api_client.dart';
import '../../../core/network/api_exception.dart';

class ChatApi {
  const ChatApi(this._client);

  final ApiClient _client;

  /// Send a message in a job conversation
  Future<Map<String, dynamic>> sendMessage({
    required String token,
    required int jobId,
    required int recipientId,
    required String content,
  }) async {
    final response = await _client.postAny(
      '/api/v1/chat/jobs/$jobId/messages',
      bearerToken: token,
      body: <String, dynamic>{'recipientId': recipientId, 'content': content},
    );

    return _readMapPayload(response);
  }

  /// Get paginated messages for a conversation
  Future<List<Map<String, dynamic>>> getMessages({
    required String token,
    required int conversationId,
    int page = 0,
    int size = 50,
  }) async {
    final response = await _client.getAny(
      '/api/v1/chat/conversations/$conversationId/messages',
      bearerToken: token,
      query: <String, dynamic>{'page': page, 'size': size},
    );

    return _readListPayload(response);
  }

  /// List all conversations for a user
  Future<List<Map<String, dynamic>>> getConversations({
    required String token,
  }) async {
    final response = await _client.getAny(
      '/api/v1/chat/conversations',
      bearerToken: token,
    );

    return _readListPayload(response);
  }

  /// Mark all messages in a conversation as read
  Future<List<int>> markAsRead({
    required String token,
    required int conversationId,
  }) async {
    final response = await _client.postAny(
      '/api/v1/chat/conversations/$conversationId/read',
      bearerToken: token,
    );

    return _readIntListPayload(response);
  }

  /// Mark all messages in a conversation as delivered
  Future<List<int>> markAsDelivered({
    required String token,
    required int conversationId,
  }) async {
    final response = await _client.postAny(
      '/api/v1/chat/conversations/$conversationId/delivered',
      bearerToken: token,
    );

    return _readIntListPayload(response);
  }

  /// Get conversations grouped by job (for client/provider view)
  Future<List<Map<String, dynamic>>> getConversationsGrouped({
    required String token,
  }) async {
    final response = await _client.getAny(
      '/api/v1/chat/conversations/grouped',
      bearerToken: token,
    );

    return _readListPayload(response);
  }

  Map<String, dynamic> _readMapPayload(Object? payload) {
    if (payload is Map<String, dynamic>) {
      if (payload.containsKey('success')) {
        final success = payload['success'];
        if (success == true) {
          final data = payload['data'];
          if (data is Map<String, dynamic>) return data;
          return payload;
        }
        throw ApiException(
          payload['message']?.toString() ?? 'Request failed',
          code: ApiErrorCode.requestFailed,
        );
      }
      return payload;
    }
    throw const ApiException(
      'Malformed response payload',
      code: ApiErrorCode.malformedResponse,
    );
  }

  List<Map<String, dynamic>> _readListPayload(Object? payload) {
    if (payload is List) {
      return payload
          .whereType<Map<String, dynamic>>()
          .map((item) => <String, dynamic>{...item})
          .toList();
    }

    if (payload is Map<String, dynamic> && payload.containsKey('success')) {
      final success = payload['success'];
      if (success == true) {
        final data = payload['data'];
        if (data is List) {
          return data
              .whereType<Map<String, dynamic>>()
              .map((item) => <String, dynamic>{...item})
              .toList();
        }
      }
      throw ApiException(
        payload['message']?.toString() ?? 'Request failed',
        code: ApiErrorCode.requestFailed,
      );
    }

    throw const ApiException(
      'Malformed response payload',
      code: ApiErrorCode.malformedResponse,
    );
  }

  List<int> _readIntListPayload(Object? payload) {
    if (payload is List) {
      return payload.whereType<num>().map((n) => n.toInt()).toList();
    }

    if (payload is Map<String, dynamic> && payload.containsKey('success')) {
      if (payload['success'] == true) {
        final data = payload['data'];
        if (data is List) {
          return data.whereType<num>().map((n) => n.toInt()).toList();
        }
      }
      throw ApiException(
        payload['message']?.toString() ?? 'Request failed',
        code: ApiErrorCode.requestFailed,
      );
    }

    return const <int>[];
  }
}
