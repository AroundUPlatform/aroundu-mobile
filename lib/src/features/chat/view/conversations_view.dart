import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/l10n/l10n_extension.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/empty_state.dart';
import '../../../core/widgets/error_state.dart';
import '../../../core/widgets/loading_state.dart';
import '../../auth/view_model/auth_view_model.dart';
import '../model/chat_models.dart';
import '../view_model/chat_view_model.dart';
import 'chat_detail_view.dart';
import 'job_conversations_view.dart';

/// Conversations screen that adapts based on user role:
/// - Workers see a flat chat list (one chat per job).
/// - Clients/Providers see chats grouped by Job cards.
class ConversationsScreen extends ConsumerWidget {
  const ConversationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authControllerProvider);
    final isWorker = auth.role == UserRole.worker;

    if (isWorker) {
      return const _WorkerConversationsView();
    }
    return const _ClientGroupedConversationsView();
  }
}

// ─────────────────── Worker: flat chat list ───────────────────

class _WorkerConversationsView extends ConsumerWidget {
  const _WorkerConversationsView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final conversationsAsync = ref.watch(conversationsControllerProvider);

    return conversationsAsync.when(
      loading: () => LoadingState(message: context.l10n.loadingConversations),
      error: (error, _) => ErrorState(
        message: error.toString(),
        onRetry: () =>
            ref.read(conversationsControllerProvider.notifier).refresh(),
      ),
      data: (conversations) {
        if (conversations.isEmpty) {
          return EmptyState(
            icon: Icons.chat_bubble_outline_rounded,
            title: context.l10n.noMessagesYet,
            subtitle: context.l10n.noMessagesSubtitle,
          );
        }

        return RefreshIndicator(
          onRefresh: () =>
              ref.read(conversationsControllerProvider.notifier).refresh(),
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: conversations.length,
            separatorBuilder: (_, __) => const Divider(height: 1, indent: 72),
            itemBuilder: (context, index) {
              return ConversationTile(conversation: conversations[index]);
            },
          ),
        );
      },
    );
  }
}

// ─────────────────── Client: grouped by job ───────────────────

class _ClientGroupedConversationsView extends ConsumerWidget {
  const _ClientGroupedConversationsView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groupedAsync = ref.watch(groupedConversationsControllerProvider);

    return groupedAsync.when(
      loading: () => LoadingState(message: context.l10n.loadingConversations),
      error: (error, _) => ErrorState(
        message: error.toString(),
        onRetry: () =>
            ref.read(groupedConversationsControllerProvider.notifier).refresh(),
      ),
      data: (groups) {
        if (groups.isEmpty) {
          return EmptyState(
            icon: Icons.chat_bubble_outline_rounded,
            title: context.l10n.noMessagesYet,
            subtitle: context.l10n.noMessagesSubtitle,
          );
        }

        return RefreshIndicator(
          onRefresh: () => ref
              .read(groupedConversationsControllerProvider.notifier)
              .refresh(),
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: groups.length,
            separatorBuilder: (_, __) => const Divider(height: 1, indent: 16),
            itemBuilder: (context, index) {
              return _JobGroupTile(group: groups[index]);
            },
          ),
        );
      },
    );
  }
}

class _JobGroupTile extends StatelessWidget {
  const _JobGroupTile({required this.group});

  final JobConversationsGroup group;

  @override
  Widget build(BuildContext context) {
    final hasUnread = group.totalUnreadCount > 0;
    final timeText = group.lastMessageAt != null
        ? formatChatTime(context, group.lastMessageAt!)
        : '';
    final workerCount = group.conversations.length;

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: group.archived
                ? AppPalette.warning.withValues(alpha: 0.15)
                : AppPalette.primary.withValues(alpha: 0.1),
            child: Icon(
              Icons.work_outline_rounded,
              color: group.archived ? AppPalette.warning : AppPalette.primary,
              size: 22,
            ),
          ),
          if (group.archived)
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: AppPalette.warning,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    width: 1.5,
                  ),
                ),
              ),
            ),
        ],
      ),
      title: Row(
        children: [
          Expanded(
            child: Text(
              group.jobTitle,
              style: TextStyle(
                fontWeight: hasUnread ? FontWeight.w700 : FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            timeText,
            style: TextStyle(
              fontSize: 12,
              color: hasUnread ? AppPalette.primary : AppPalette.textSecondary,
              fontWeight: hasUnread ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ],
      ),
      subtitle: Row(
        children: [
          Expanded(
            child: Text(
              group.lastMessageContent ??
                  context.l10n.workersCount(workerCount),
              style: TextStyle(
                fontSize: 13,
                color: AppPalette.textSecondary,
                fontWeight: hasUnread ? FontWeight.w600 : FontWeight.normal,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (hasUnread) UnreadBadge(count: group.totalUnreadCount),
        ],
      ),
      onTap: () {
        if (workerCount == 1) {
          // Single worker — go directly to chat
          final conv = group.conversations.first;
          final auth = ProviderScope.containerOf(
            context,
          ).read(authControllerProvider);
          final myRole = auth.role == UserRole.worker ? 'WORKER' : 'CLIENT';
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => ChatDetailScreen(
                conversationId: conv.id,
                jobId: conv.jobId,
                otherUserId: conv.otherParticipantId(myRole),
                otherUserName: conv.otherParticipantName(myRole),
                jobTitle: conv.jobTitle,
              ),
            ),
          );
        } else {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => JobConversationsScreen(group: group),
            ),
          );
        }
      },
    );
  }
}

// ─────────────────── Shared widgets ───────────────────

/// Reusable conversation tile used by both worker flat list and
/// client per-job list.
class ConversationTile extends ConsumerWidget {
  const ConversationTile({super.key, required this.conversation});

  final Conversation conversation;

  String _lastMessagePreview(
    BuildContext context,
    Conversation conv,
    AuthState auth,
  ) {
    if (conv.lastMessageContent == null) {
      return context.l10n.chatReFallback(conv.jobTitle);
    }
    final myRole = auth.role == UserRole.worker ? 'WORKER' : 'CLIENT';
    final isMine = conv.lastMessageSenderRole == myRole;
    return isMine
        ? context.l10n.chatYouPrefix(conv.lastMessageContent!)
        : conv.lastMessageContent!;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authControllerProvider);
    final myRole = auth.role == UserRole.worker ? 'WORKER' : 'CLIENT';
    final otherName = conversation.otherParticipantName(myRole);
    final hasUnread = conversation.unreadCount > 0;

    final timeText = conversation.lastMessageAt != null
        ? formatChatTime(context, conversation.lastMessageAt!)
        : '';

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: conversation.archived
                ? AppPalette.warning.withValues(alpha: 0.15)
                : AppPalette.primary.withValues(alpha: 0.1),
            child: Text(
              otherName.isNotEmpty ? otherName[0].toUpperCase() : '?',
              style: TextStyle(
                color: conversation.archived
                    ? AppPalette.warning
                    : AppPalette.primary,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
          if (conversation.archived)
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: AppPalette.warning,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    width: 1.5,
                  ),
                ),
              ),
            ),
        ],
      ),
      title: Row(
        children: [
          Expanded(
            child: Text(
              otherName,
              style: TextStyle(
                fontWeight: hasUnread ? FontWeight.w700 : FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            timeText,
            style: TextStyle(
              fontSize: 12,
              color: hasUnread ? AppPalette.primary : AppPalette.textSecondary,
              fontWeight: hasUnread ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ],
      ),
      subtitle: Row(
        children: [
          Expanded(
            child: Text(
              _lastMessagePreview(context, conversation, auth),
              style: TextStyle(
                fontSize: 13,
                color: AppPalette.textSecondary,
                fontWeight: hasUnread ? FontWeight.w600 : FontWeight.normal,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (hasUnread) UnreadBadge(count: conversation.unreadCount),
        ],
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => ChatDetailScreen(
              conversationId: conversation.id,
              jobId: conversation.jobId,
              otherUserId: conversation.otherParticipantId(myRole),
              otherUserName: otherName,
              jobTitle: conversation.jobTitle,
            ),
          ),
        );
      },
    );
  }
}

/// Unread count badge: shows [1], [12], or [99+].
class UnreadBadge extends StatelessWidget {
  const UnreadBadge({super.key, required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    final label = count > 99 ? '99+' : '$count';
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
      decoration: BoxDecoration(
        color: AppPalette.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

/// Format a timestamp for conversation list display.
String formatChatTime(BuildContext context, DateTime dateTime) {
  final now = DateTime.now();
  final diff = now.difference(dateTime);

  if (diff.inMinutes < 1) return context.l10n.now;
  if (diff.inHours < 1) return context.l10n.minutesAgo(diff.inMinutes);
  if (diff.inDays < 1) return DateFormat.jm().format(dateTime);
  if (diff.inDays < 7) return DateFormat.E().format(dateTime);
  return DateFormat.MMMd().format(dateTime);
}
