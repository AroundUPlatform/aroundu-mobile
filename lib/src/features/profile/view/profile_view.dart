import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/app_notification.dart';
import '../../../core/widgets/rating_stars.dart';
import '../../auth/view_model/auth_view_model.dart';
import '../../review/view/review_list_view.dart';
import '../../review/view_model/review_view_model.dart';
import '../../../../app.dart';
import '../../../core/l10n/l10n_extension.dart';
import '../view_model/image_upload_view_model.dart';
import 'edit_profile_view.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authControllerProvider);
    final isWorker = auth.role == UserRole.worker;

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.myProfile),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_rounded),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const EditProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () =>
            ref.read(authControllerProvider.notifier).refreshProfile(),
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // Avatar + Name
            Center(
              child: Column(
                children: [
                  _UploadableAvatar(auth: auth),
                  const SizedBox(height: 12),
                  Text(
                    auth.name ?? context.l10n.unknown,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    auth.role == UserRole.provider
                        ? context.l10n.roleClient
                        : context.l10n.roleWorker,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Worker ratings
            if (isWorker && auth.userId != null) ...[
              _WorkerRatingSection(workerId: auth.userId!),
              const SizedBox(height: 16),
            ],

            // Info card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    _InfoRow(
                      icon: Icons.email_outlined,
                      label: context.l10n.emailLabel,
                      value: auth.email ?? '—',
                    ),
                    const Divider(height: 20),
                    _InfoRow(
                      icon: Icons.phone_outlined,
                      label: context.l10n.phone,
                      value: auth.phoneNumber ?? '—',
                    ),
                    const Divider(height: 20),
                    _InfoRow(
                      icon: Icons.currency_exchange_rounded,
                      label: context.l10n.currencyLabel,
                      value: auth.currency,
                    ),
                    if (isWorker) ...[
                      const Divider(height: 20),
                      _InfoRow(
                        icon: Icons.work_history_outlined,
                        label: context.l10n.experienceLabel,
                        value: auth.experienceYears != null
                            ? context.l10n.yearsCount(auth.experienceYears!)
                            : context.l10n.notSet,
                      ),
                      const Divider(height: 20),
                      _InfoRow(
                        icon: Icons.badge_outlined,
                        label: context.l10n.certificationsLabel,
                        value: auth.certifications ?? '—',
                      ),
                      const Divider(height: 20),
                      _InfoRow(
                        icon: Icons.circle,
                        label: context.l10n.statusLabel,
                        value: auth.isOnDuty == true
                            ? context.l10n.onDuty
                            : context.l10n.offDuty,
                        valueColor: auth.isOnDuty == true
                            ? AppPalette.success
                            : Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ],
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Actions
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.palette_outlined),
                    title: Text(context.l10n.themeAndColors),
                    trailing: const Icon(Icons.chevron_right_rounded),
                    onTap: () =>
                        Navigator.pushNamed(context, AppRoutes.themePicker),
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(Icons.language_outlined),
                    title: Text(context.l10n.language),
                    trailing: const Icon(Icons.chevron_right_rounded),
                    onTap: () =>
                        Navigator.pushNamed(context, AppRoutes.languagePicker),
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(Icons.auto_awesome_outlined),
                    title: Text(context.l10n.aiModelLabel),
                    trailing: const Icon(Icons.chevron_right_rounded),
                    onTap: () =>
                        Navigator.pushNamed(context, AppRoutes.aiSetup),
                  ),
                  if (isWorker) ...[
                    const Divider(height: 1),
                    ListTile(
                      leading: Icon(
                        (auth.isOnDuty ?? false)
                            ? Icons.work_rounded
                            : Icons.work_off_outlined,
                        color: (auth.isOnDuty ?? false)
                            ? AppPalette.success
                            : null,
                      ),
                      title: Text(context.l10n.availableForWork),
                      subtitle: Text(
                        (auth.isOnDuty ?? false)
                            ? context.l10n.visibleToClients
                            : context.l10n.currentlyOffDuty,
                      ),
                      trailing: Switch.adaptive(
                        value: auth.isOnDuty ?? false,
                        onChanged: auth.isLoading
                            ? null
                            : (_) => ref
                                  .read(authControllerProvider.notifier)
                                  .toggleDutyStatus(),
                      ),
                    ),
                  ],
                  const Divider(height: 1),
                  if (isWorker && auth.userId != null)
                    ListTile(
                      leading: const Icon(Icons.star_outline_rounded),
                      title: Text(context.l10n.myReviews),
                      trailing: const Icon(Icons.chevron_right_rounded),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => WorkerReviewsScreen(
                              workerId: auth.userId!,
                              workerName: auth.name,
                            ),
                          ),
                        );
                      },
                    ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(
                      Icons.logout_rounded,
                      color: AppPalette.danger,
                    ),
                    title: Text(
                      context.l10n.logout,
                      style: const TextStyle(color: AppPalette.danger),
                    ),
                    onTap: () async {
                      final confirmed = await showDialog<bool>(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: Text(context.l10n.logout),
                          content: Text(context.l10n.logoutConfirm),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(ctx).pop(false),
                              child: Text(context.l10n.cancel),
                            ),
                            FilledButton(
                              onPressed: () => Navigator.of(ctx).pop(true),
                              child: Text(context.l10n.logout),
                            ),
                          ],
                        ),
                      );
                      if (confirmed == true && context.mounted) {
                        await ref
                            .read(authControllerProvider.notifier)
                            .logout();
                        if (context.mounted) {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                            AppRoutes.login,
                            (route) => false,
                          );
                        }
                      }
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Delete account
            TextButton(
              onPressed: () async {
                final confirmed = await showDialog<bool>(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text(context.l10n.deleteAccount),
                    content: Text(context.l10n.deleteAccountConfirm),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(ctx).pop(false),
                        child: Text(context.l10n.cancel),
                      ),
                      FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: AppPalette.danger,
                        ),
                        onPressed: () => Navigator.of(ctx).pop(true),
                        child: Text(context.l10n.delete),
                      ),
                    ],
                  ),
                );
                if (confirmed == true && context.mounted) {
                  final success = await ref
                      .read(authControllerProvider.notifier)
                      .deleteAccount();
                  if (context.mounted) {
                    if (success) {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        AppRoutes.login,
                        (route) => false,
                      );
                    } else {
                      AppNotifier.showError(
                        context,
                        context.l10n.couldNotDeleteAccount,
                      );
                    }
                  }
                }
              },
              child: Text(
                context.l10n.deleteAccount,
                style: const TextStyle(color: AppPalette.danger, fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WorkerRatingSection extends ConsumerWidget {
  const _WorkerRatingSection({required this.workerId});
  final int workerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reviewsAsync = ref.watch(workerReviewsControllerProvider(workerId));

    return reviewsAsync.when(
      loading: () => const SizedBox.shrink(),
      error: (_, __) => const SizedBox.shrink(),
      data: (stats) {
        if (stats.totalReviews == 0) return const SizedBox.shrink();
        return Center(
          child: RatingStars(
            rating: stats.averageRating,
            size: 22,
            reviewCount: stats.totalReviews,
          ),
        );
      },
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
    this.valueColor,
  });

  final IconData icon;
  final String label;
  final String value;
  final Color? valueColor;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Row(
      children: [
        Icon(icon, size: 18, color: cs.onSurfaceVariant),
        const SizedBox(width: 10),
        Text(label, style: TextStyle(color: cs.onSurfaceVariant, fontSize: 13)),
        const Spacer(),
        Flexible(
          child: Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: valueColor ?? cs.onSurface,
              fontSize: 13,
            ),
            textAlign: TextAlign.end,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

/// Tappable CircleAvatar that triggers the profile image upload flow.
class _UploadableAvatar extends ConsumerWidget {
  const _UploadableAvatar({required this.auth});

  final AuthState auth;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uploadState = ref.watch(imageUploadControllerProvider);
    final isUploading = uploadState.isUploading;

    ref.listen<ImageUploadState>(imageUploadControllerProvider, (prev, next) {
      if (!context.mounted) return;
      if (prev?.isUploading == true && !next.isUploading) {
        if (next.errorMessage != null) {
          AppNotifier.showError(context, next.errorMessage!);
        } else if (next.successUrl != null) {
          AppNotifier.showSuccess(context, context.l10n.profilePhotoUpdated);
        }
      }
    });

    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        GestureDetector(
          onTap: isUploading
              ? null
              : () => ref
                    .read(imageUploadControllerProvider.notifier)
                    .pickAndUpload(),
          child: CircleAvatar(
            radius: 48,
            backgroundColor: Theme.of(
              context,
            ).colorScheme.primary.withValues(alpha: 0.1),
            backgroundImage:
                auth.profileImageUrl != null && auth.profileImageUrl!.isNotEmpty
                ? NetworkImage(auth.profileImageUrl!)
                : null,
            child: isUploading
                ? const CircularProgressIndicator(strokeWidth: 2.6)
                : auth.profileImageUrl == null || auth.profileImageUrl!.isEmpty
                ? Text(
                    (auth.name ?? 'U')[0].toUpperCase(),
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  )
                : null,
          ),
        ),
        // Camera badge
        IgnorePointer(
          child: Container(
            width: 26,
            height: 26,
            decoration: BoxDecoration(
              color: AppPalette.primary,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: const Icon(
              Icons.camera_alt_rounded,
              size: 13,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
