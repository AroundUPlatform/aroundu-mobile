/// Tracks delivery lifecycle of a chat message (mirrors backend MessageStatus).
enum MessageStatus { sent, delivered, read }

MessageStatus _parseMessageStatus(Object? value) {
  final str = value?.toString().toUpperCase() ?? 'SENT';
  return switch (str) {
    'DELIVERED' => MessageStatus.delivered,
    'READ' => MessageStatus.read,
    _ => MessageStatus.sent,
  };
}

class ChatMessage {
  const ChatMessage({
    required this.id,
    required this.conversationId,
    required this.senderId,
    required this.senderRole,
    required this.content,
    required this.status,
    this.createdAt,
  });

  final int id;
  final int conversationId;
  final int senderId;
  final String senderRole; // "WORKER" or "CLIENT"
  final String content;
  final MessageStatus status;
  final DateTime? createdAt;

  bool get isRead => status == MessageStatus.read;
  bool get isDelivered =>
      status == MessageStatus.delivered || status == MessageStatus.read;

  ChatMessage copyWith({MessageStatus? status}) {
    return ChatMessage(
      id: id,
      conversationId: conversationId,
      senderId: senderId,
      senderRole: senderRole,
      content: content,
      status: status ?? this.status,
      createdAt: createdAt,
    );
  }

  factory ChatMessage.fromMap(Map<String, dynamic> map) {
    return ChatMessage(
      id: _asInt(map['id']),
      conversationId: _asInt(map['conversationId']),
      senderId: _asInt(map['senderId']),
      senderRole: map['senderRole']?.toString() ?? 'UNKNOWN',
      content: map['content']?.toString() ?? '',
      status: _parseMessageStatus(map['status']),
      createdAt: _asDateTime(map['createdAt']),
    );
  }
}

class Conversation {
  const Conversation({
    required this.id,
    required this.jobId,
    required this.jobTitle,
    required this.participantOneId,
    required this.participantTwoId,
    this.jobStatus,
    this.participantOneName,
    this.participantTwoName,
    this.unreadCount = 0,
    this.lastMessageContent,
    this.lastMessageSenderId,
    this.archived = false,
    this.archivedAt,
    this.lastMessageAt,
    this.createdAt,
  });

  final int id;
  final int jobId;
  final String jobTitle;
  final String? jobStatus;
  final int participantOneId;
  final int participantTwoId;
  final String? participantOneName;
  final String? participantTwoName;
  final int unreadCount;
  final String? lastMessageContent;
  final int? lastMessageSenderId;
  final bool archived;
  final DateTime? archivedAt;
  final DateTime? lastMessageAt;
  final DateTime? createdAt;

  /// Get the display name for the other participant
  String otherParticipantName(int currentUserId) {
    if (currentUserId == participantOneId) {
      return participantTwoName ?? 'User';
    }
    return participantOneName ?? 'User';
  }

  int otherParticipantId(int currentUserId) {
    if (currentUserId == participantOneId) {
      return participantTwoId;
    }
    return participantOneId;
  }

  factory Conversation.fromMap(Map<String, dynamic> map) {
    return Conversation(
      id: _asInt(map['id']),
      jobId: _asInt(map['jobId']),
      jobTitle: map['jobTitle']?.toString() ?? 'Untitled',
      jobStatus: map['jobStatus']?.toString(),
      participantOneId: _asInt(map['participantOneId']),
      participantTwoId: _asInt(map['participantTwoId']),
      participantOneName: map['participantOneName']?.toString(),
      participantTwoName: map['participantTwoName']?.toString(),
      unreadCount: _asInt(map['unreadCount']),
      lastMessageContent: map['lastMessageContent']?.toString(),
      lastMessageSenderId: map['lastMessageSenderId'] != null
          ? _asInt(map['lastMessageSenderId'])
          : null,
      archived: _asBool(map['archived']),
      archivedAt: _asDateTime(map['archivedAt']),
      lastMessageAt: _asDateTime(map['lastMessageAt']),
      createdAt: _asDateTime(map['createdAt']),
    );
  }
}

/// Groups conversations under a single job (for client/provider view).
class JobConversationsGroup {
  const JobConversationsGroup({
    required this.jobId,
    required this.jobTitle,
    required this.jobStatus,
    required this.conversations,
    this.totalUnreadCount = 0,
    this.lastMessageContent,
    this.lastMessageAt,
    this.archived = false,
  });

  final int jobId;
  final String jobTitle;
  final String jobStatus;
  final List<Conversation> conversations;
  final int totalUnreadCount;
  final String? lastMessageContent;
  final DateTime? lastMessageAt;
  final bool archived;

  factory JobConversationsGroup.fromMap(Map<String, dynamic> map) {
    final rawConversations = map['conversations'];
    final conversations = <Conversation>[];
    if (rawConversations is List) {
      for (final item in rawConversations) {
        if (item is Map<String, dynamic>) {
          conversations.add(Conversation.fromMap(item));
        }
      }
    }

    return JobConversationsGroup(
      jobId: _asInt(map['jobId']),
      jobTitle: map['jobTitle']?.toString() ?? 'Untitled',
      jobStatus: map['jobStatus']?.toString() ?? '',
      conversations: conversations,
      totalUnreadCount: _asInt(map['totalUnreadCount']),
      lastMessageContent: map['lastMessageContent']?.toString(),
      lastMessageAt: _asDateTime(map['lastMessageAt']?.toString()),
      archived: _asBool(map['archived']),
    );
  }
}

int _asInt(Object? value) {
  if (value is int) return value;
  if (value is num) return value.toInt();
  return int.tryParse(value?.toString() ?? '') ?? 0;
}

bool _asBool(Object? value) {
  if (value is bool) return value;
  return value?.toString().toLowerCase() == 'true';
}

DateTime? _asDateTime(Object? value) {
  if (value == null) return null;
  return DateTime.tryParse(value.toString());
}
