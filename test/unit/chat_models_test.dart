import 'package:aroundu/src/features/chat/model/chat_models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MessageStatus', () {
    test('values exist', () {
      expect(MessageStatus.values.length, 3);
      expect(MessageStatus.values, contains(MessageStatus.sent));
      expect(MessageStatus.values, contains(MessageStatus.delivered));
      expect(MessageStatus.values, contains(MessageStatus.read));
    });
  });

  group('ChatMessage', () {
    test('fromMap creates valid message', () {
      final map = {
        'id': 42,
        'conversationId': 7,
        'senderId': 1,
        'senderRole': 'WORKER',
        'content': 'Hello',
        'status': 'DELIVERED',
        'createdAt': '2025-01-15T10:30:00',
      };

      final msg = ChatMessage.fromMap(map);

      expect(msg.id, 42);
      expect(msg.conversationId, 7);
      expect(msg.senderId, 1);
      expect(msg.senderRole, 'WORKER');
      expect(msg.content, 'Hello');
      expect(msg.status, MessageStatus.delivered);
      expect(msg.createdAt, DateTime(2025, 1, 15, 10, 30));
    });

    test('fromMap handles numeric string ids', () {
      final map = {
        'id': '99',
        'conversationId': '10',
        'senderId': '5',
        'senderRole': 'CLIENT',
        'content': 'test',
        'status': 'READ',
      };

      final msg = ChatMessage.fromMap(map);
      expect(msg.id, 99);
      expect(msg.conversationId, 10);
      expect(msg.status, MessageStatus.read);
    });

    test('fromMap handles nulls gracefully', () {
      final msg = ChatMessage.fromMap({});

      expect(msg.id, 0);
      expect(msg.content, '');
      expect(msg.status, MessageStatus.sent);
      expect(msg.createdAt, isNull);
    });

    test('fromMap parses SENT status', () {
      final msg = ChatMessage.fromMap({
        'id': 1,
        'content': 'x',
        'status': 'SENT',
      });
      expect(msg.status, MessageStatus.sent);
    });

    test('fromMap parses unknown status as sent', () {
      final msg = ChatMessage.fromMap({
        'id': 1,
        'content': 'x',
        'status': 'BOGUS',
      });
      expect(msg.status, MessageStatus.sent);
    });

    test('fromMap parses null status as sent', () {
      final msg = ChatMessage.fromMap({'id': 1, 'content': 'x'});
      expect(msg.status, MessageStatus.sent);
    });

    test('isRead getter returns true only for read status', () {
      final read = ChatMessage.fromMap({
        'id': 1,
        'content': 'x',
        'status': 'READ',
      });
      final delivered = ChatMessage.fromMap({
        'id': 2,
        'content': 'y',
        'status': 'DELIVERED',
      });
      final sent = ChatMessage.fromMap({
        'id': 3,
        'content': 'z',
        'status': 'SENT',
      });

      expect(read.isRead, isTrue);
      expect(delivered.isRead, isFalse);
      expect(sent.isRead, isFalse);
    });

    test('isDelivered getter returns true for delivered and read', () {
      final read = ChatMessage.fromMap({
        'id': 1,
        'content': 'x',
        'status': 'READ',
      });
      final delivered = ChatMessage.fromMap({
        'id': 2,
        'content': 'y',
        'status': 'DELIVERED',
      });
      final sent = ChatMessage.fromMap({
        'id': 3,
        'content': 'z',
        'status': 'SENT',
      });

      expect(read.isDelivered, isTrue);
      expect(delivered.isDelivered, isTrue);
      expect(sent.isDelivered, isFalse);
    });

    test('copyWith updates status', () {
      final msg = ChatMessage.fromMap({
        'id': 1,
        'content': 'Hello',
        'status': 'SENT',
      });
      final updated = msg.copyWith(status: MessageStatus.delivered);

      expect(updated.status, MessageStatus.delivered);
      expect(updated.id, 1);
      expect(updated.content, 'Hello');
    });

    test('copyWith preserves values when not specified', () {
      final msg = ChatMessage.fromMap({
        'id': 5,
        'conversationId': 3,
        'senderId': 10,
        'senderRole': 'WORKER',
        'content': 'Original',
        'status': 'DELIVERED',
        'createdAt': '2025-06-01T12:00:00',
      });

      final updated = msg.copyWith();

      expect(updated.id, msg.id);
      expect(updated.conversationId, msg.conversationId);
      expect(updated.senderId, msg.senderId);
      expect(updated.senderRole, msg.senderRole);
      expect(updated.content, msg.content);
      expect(updated.status, msg.status);
      expect(updated.createdAt, msg.createdAt);
    });
  });

  group('Conversation', () {
    test('fromMap creates valid conversation', () {
      final map = {
        'id': 10,
        'jobId': 5,
        'jobTitle': 'Fix sink',
        'jobStatus': 'IN_PROGRESS',
        'participantOneId': 1,
        'participantOneName': 'Alice',
        'participantTwoId': 2,
        'participantTwoName': 'Bob',
        'unreadCount': 3,
        'lastMessageContent': 'On my way!',
        'lastMessageSenderId': 2,
        'lastMessageAt': '2025-01-20T09:00:00',
        'archived': false,
      };

      final conv = Conversation.fromMap(map);

      expect(conv.id, 10);
      expect(conv.jobId, 5);
      expect(conv.jobTitle, 'Fix sink');
      expect(conv.jobStatus, 'IN_PROGRESS');
      expect(conv.participantOneId, 1);
      expect(conv.participantOneName, 'Alice');
      expect(conv.participantTwoId, 2);
      expect(conv.participantTwoName, 'Bob');
      expect(conv.unreadCount, 3);
      expect(conv.lastMessageContent, 'On my way!');
      expect(conv.lastMessageSenderId, 2);
      expect(conv.archived, isFalse);
    });

    test('otherParticipantId returns correct id', () {
      final conv = Conversation.fromMap({
        'id': 1,
        'jobId': 1,
        'participantOneId': 10,
        'participantOneName': 'Alice',
        'participantTwoId': 20,
        'participantTwoName': 'Bob',
      });

      expect(conv.otherParticipantId('CLIENT'), 20);
      expect(conv.otherParticipantId('WORKER'), 10);
    });

    test('otherParticipantName returns correct name', () {
      final conv = Conversation.fromMap({
        'id': 1,
        'jobId': 1,
        'participantOneId': 10,
        'participantOneName': 'Alice',
        'participantTwoId': 20,
        'participantTwoName': 'Bob',
      });

      expect(conv.otherParticipantName('CLIENT'), 'Bob');
      expect(conv.otherParticipantName('WORKER'), 'Alice');
    });

    test('archived field defaults to false', () {
      final conv = Conversation.fromMap({'id': 1, 'jobId': 1});
      expect(conv.archived, isFalse);
    });
  });

  group('JobConversationsGroup', () {
    test('fromMap parses group with conversations', () {
      final map = {
        'jobId': 5,
        'jobTitle': 'Plumbing job',
        'jobStatus': 'IN_PROGRESS',
        'totalUnreadCount': 12,
        'lastMessageContent': 'Almost done',
        'lastMessageAt': '2025-01-20T15:00:00',
        'archived': false,
        'conversations': [
          {
            'id': 1,
            'jobId': 5,
            'participantOneId': 10,
            'participantOneName': 'Alice',
            'participantTwoId': 20,
            'participantTwoName': 'Bob',
            'unreadCount': 5,
          },
          {
            'id': 2,
            'jobId': 5,
            'participantOneId': 10,
            'participantOneName': 'Alice',
            'participantTwoId': 30,
            'participantTwoName': 'Charlie',
            'unreadCount': 7,
          },
        ],
      };

      final group = JobConversationsGroup.fromMap(map);

      expect(group.jobId, 5);
      expect(group.jobTitle, 'Plumbing job');
      expect(group.totalUnreadCount, 12);
      expect(group.conversations.length, 2);
      expect(group.conversations[0].participantTwoName, 'Bob');
      expect(group.conversations[1].participantTwoName, 'Charlie');
      expect(group.archived, isFalse);
    });

    test('fromMap handles empty conversations', () {
      final group = JobConversationsGroup.fromMap({
        'jobId': 1,
        'jobTitle': 'Test',
        'jobStatus': 'COMPLETED',
        'conversations': [],
      });

      expect(group.conversations, isEmpty);
    });

    test('fromMap handles null conversations', () {
      final group = JobConversationsGroup.fromMap({
        'jobId': 1,
        'jobTitle': 'Test',
        'jobStatus': 'OPEN',
      });

      expect(group.conversations, isEmpty);
    });

    test('archived defaults to false', () {
      final group = JobConversationsGroup.fromMap({
        'jobId': 1,
        'jobTitle': 'Test',
        'jobStatus': 'OPEN',
      });

      expect(group.archived, isFalse);
    });
  });
}
