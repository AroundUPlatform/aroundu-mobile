import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../auth/view_model/auth_view_model.dart';
import '../../chat/view/conversations_view.dart';
import '../../profile/view/profile_view.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/app_notification.dart';
import '../model/job_item.dart';
import '../model/job_workflow_models.dart';
import '../view_model/job_view_model.dart';
import '../view_model/navigation_view_model.dart';
import '../view_model/skill_suggest_view_model.dart';
import '../view_model/worker_skills_view_model.dart';
import 'widgets/job_card.dart';
import 'widgets/job_shared_widgets.dart';
import 'widgets/skill_suggest_field.dart';

class WorkerShellScreen extends ConsumerStatefulWidget {
  const WorkerShellScreen({super.key});

  static const List<String> _titles = [
    'Task Feed',
    'Skills',
    'Messages',
    'Profile',
  ];

  @override
  ConsumerState<WorkerShellScreen> createState() => _WorkerShellScreenState();
}

class _WorkerShellScreenState extends ConsumerState<WorkerShellScreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // Invalidate the nearby feed AND all "My Jobs" filter caches so status
      // changes made on other devices are visible after the app comes back.
      ref.invalidate(workerFeedControllerProvider);
      for (final filter in WorkerJobFilter.values) {
        if (filter != WorkerJobFilter.nearby) {
          ref.invalidate(workerMyJobsProvider(filter));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final tabIndex = ref.watch(workerTabIndexProvider);

    // Auto-refresh the feed whenever the user switches back to the home tab.
    ref.listen<int>(workerTabIndexProvider, (previous, next) {
      if (next == 0 && (previous ?? -1) != 0) {
        ref.invalidate(workerFeedControllerProvider);
        for (final filter in WorkerJobFilter.values) {
          if (filter != WorkerJobFilter.nearby) {
            ref.invalidate(workerMyJobsProvider(filter));
          }
        }
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(WorkerShellScreen._titles[tabIndex]),
        actions: const [_WorkerDutyToggle()],
      ),
      body: IndexedStack(
        index: tabIndex,
        children: const [
          _WorkerFeedTab(),
          _WorkerSkillsTab(),
          ConversationsScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: tabIndex,
        onDestinationSelected: (index) {
          ref.read(workerTabIndexProvider.notifier).setIndex(index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.location_searching_outlined),
            selectedIcon: Icon(Icons.location_searching_rounded),
            label: 'Feed',
          ),
          NavigationDestination(
            icon: Icon(Icons.handyman_outlined),
            selectedIcon: Icon(Icons.handyman_rounded),
            label: 'Skills',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat_bubble_outline_rounded),
            selectedIcon: Icon(Icons.chat_bubble_rounded),
            label: 'Messages',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline_rounded),
            selectedIcon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

/// Compact on-duty toggle shown in the Worker app bar on every tab.
class _WorkerDutyToggle extends ConsumerWidget {
  const _WorkerDutyToggle();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authControllerProvider);
    final isOnDuty = auth.isOnDuty ?? false;

    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.circle,
            size: 8,
            color: isOnDuty
                ? AppPalette.success
                : Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: 2),
          Switch.adaptive(
            value: isOnDuty,
            onChanged: auth.isLoading
                ? null
                : (_) => ref
                      .read(authControllerProvider.notifier)
                      .toggleDutyStatus(),
          ),
        ],
      ),
    );
  }
}

class _WorkerFeedTab extends ConsumerStatefulWidget {
  const _WorkerFeedTab();

  @override
  ConsumerState<_WorkerFeedTab> createState() => _WorkerFeedTabState();
}

class _WorkerFeedTabState extends ConsumerState<_WorkerFeedTab> {
  WorkerJobFilter _activeFilter = WorkerJobFilter.nearby;
  Timer? _refreshTimer;

  /// Local mirror of the radius used purely for real-time slider label
  /// feedback.  The actual provider (and therefore the API call) is only
  /// updated once the user lifts their finger — acting as a debounce.
  late int _displayRadius;

  @override
  void initState() {
    super.initState();
    _displayRadius = ref.read(workerFeedRadiusProvider);
    // Poll every 30 s so status changes made by the client on another device
    // are reflected without manual pull-to-refresh.
    _refreshTimer = Timer.periodic(
      const Duration(seconds: 30),
      (_) => _invalidateAllFilters(),
    );
  }

  @override
  void dispose() {
    _refreshTimer?.cancel();
    super.dispose();
  }

  static const List<({WorkerJobFilter filter, String label, IconData icon})>
  _chips = [
    (
      filter: WorkerJobFilter.nearby,
      label: 'Nearby',
      icon: Icons.location_on_outlined,
    ),
    (
      filter: WorkerJobFilter.all,
      label: 'All Mine',
      icon: Icons.work_outline_rounded,
    ),
    (
      filter: WorkerJobFilter.bidPlaced,
      label: 'Bid Placed',
      icon: Icons.gavel_rounded,
    ),
    (
      filter: WorkerJobFilter.accepted,
      label: 'Accepted',
      icon: Icons.handshake_outlined,
    ),
    (
      filter: WorkerJobFilter.inProgress,
      label: 'In Progress',
      icon: Icons.construction_rounded,
    ),
    (
      filter: WorkerJobFilter.completed,
      label: 'Completed',
      icon: Icons.check_circle_outline_rounded,
    ),
    (
      filter: WorkerJobFilter.cancelled,
      label: 'Cancelled',
      icon: Icons.cancel_outlined,
    ),
    (
      filter: WorkerJobFilter.expired,
      label: 'Expired',
      icon: Icons.timer_off_outlined,
    ),
  ];

  static const Map<WorkerJobFilter, String> _emptyMessages = {
    WorkerJobFilter.nearby: 'No nearby jobs right now',
    WorkerJobFilter.all: 'No jobs yet — place a bid to get started!',
    WorkerJobFilter.bidPlaced: 'No pending bids',
    WorkerJobFilter.accepted: 'No accepted jobs',
    WorkerJobFilter.inProgress: 'No jobs in progress',
    WorkerJobFilter.completed: 'No completed jobs yet',
    WorkerJobFilter.cancelled: 'No cancelled jobs',
    WorkerJobFilter.expired: 'No expired jobs',
  };

  Future<void> _refresh() async {
    if (_activeFilter == WorkerJobFilter.nearby) {
      return ref.read(workerFeedControllerProvider.notifier).refresh();
    }
    ref.invalidate(workerMyJobsProvider(_activeFilter));
  }

  /// After a workflow action (bid, handshake, start code) refresh ALL cached
  /// job filters so every chip shows up-to-date data on next visit.
  void _invalidateAllFilters() {
    ref.invalidate(workerFeedControllerProvider);
    for (final filter in WorkerJobFilter.values) {
      if (filter != WorkerJobFilter.nearby) {
        ref.invalidate(workerMyJobsProvider(filter));
      }
    }
  }

  Future<void> _openWorkflowSheet(JobItem job) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
      builder: (_) => DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.92,
        maxChildSize: 0.96,
        minChildSize: 0.7,
        builder: (_, controller) {
          return _WorkerJobWorkflowSheet(
            jobId: job.jobId,
            scrollController: controller,
          );
        },
      ),
    );
    // Invalidate all filter caches so any status change is visible everywhere.
    _invalidateAllFilters();
  }

  Widget _buildChipBar() {
    return SizedBox(
      height: 44,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: _chips.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final chip = _chips[index];
          final selected = _activeFilter == chip.filter;
          return FilterChip(
            selected: selected,
            avatar: Icon(chip.icon, size: 16),
            label: Text(chip.label),
            onSelected: (_) {
              if (_activeFilter != chip.filter) {
                setState(() => _activeFilter = chip.filter);
              }
            },
            showCheckmark: false,
          );
        },
      ),
    );
  }

  Widget _buildJobList(List<JobItem> jobs) {
    if (jobs.isEmpty) {
      final message = _emptyMessages[_activeFilter] ?? 'No jobs found';
      return CenteredListBody(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              _activeFilter == WorkerJobFilter.nearby
                  ? Icons.search_off_rounded
                  : Icons.work_off_outlined,
              size: 64,
              color: Theme.of(
                context,
              ).colorScheme.onSurfaceVariant.withValues(alpha: 0.45),
            ),
            const SizedBox(height: 14),
            Text(message, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 6),
            Text(
              'Pull down to refresh and check again.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      );
    }

    return ListView.separated(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      itemCount: jobs.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final job = jobs[index];
        return TweenAnimationBuilder<double>(
          duration: Duration(milliseconds: 200 + (index * 35)),
          curve: Curves.easeOutCubic,
          tween: Tween<double>(begin: 0, end: 1),
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: Transform.translate(
                offset: Offset(0, 12 * (1 - value)),
                child: child,
              ),
            );
          },
          child: JobCard(
            job: job,
            showDistance: _activeFilter == WorkerJobFilter.nearby,
            viewerCurrencyCode: ref.read(authControllerProvider).currency,
            onTap: () => _openWorkflowSheet(job),
          ),
        );
      },
    );
  }

  Widget _buildDistanceSlider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const Icon(Icons.social_distance_rounded, size: 18),
          const SizedBox(width: 4),
          Text(
            '$_displayRadius km',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Expanded(
            child: Slider(
              value: _displayRadius.toDouble(),
              min: 2,
              max: 30,
              divisions: 28,
              label: '$_displayRadius km',
              // Update label in real time without triggering the API.
              onChanged: (v) => setState(() => _displayRadius = v.round()),
              // Commit to the provider (and thus the API) only on finger lift.
              onChangeEnd: (v) {
                ref.read(workerFeedRadiusProvider.notifier).state = v.round();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOfflinePlaceholder() {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return CenteredListBody(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: colors.surfaceContainerHighest,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.wifi_off_rounded,
              size: 40,
              color: colors.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 18),
          Text(
            'You\'re Offline',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Toggle the switch in the top bar to go online and discover nearby jobs.',
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colors.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final auth = ref.watch(authControllerProvider);
    final isOnDuty = auth.isOnDuty ?? false;
    final showNearby = _activeFilter == WorkerJobFilter.nearby;

    // When offline and on the Nearby tab, skip the API call entirely
    if (showNearby && !isOnDuty) {
      return Column(
        children: [
          const SizedBox(height: 10),
          _buildChipBar(),
          _buildDistanceSlider(),
          const SizedBox(height: 4),
          Expanded(child: _buildOfflinePlaceholder()),
        ],
      );
    }

    final AsyncValue<List<JobItem>> jobsAsync = showNearby
        ? ref.watch(workerFeedControllerProvider)
        : ref.watch(workerMyJobsProvider(_activeFilter));

    return Column(
      children: [
        const SizedBox(height: 10),
        _buildChipBar(),
        if (showNearby) _buildDistanceSlider(),
        const SizedBox(height: 4),
        Expanded(
          child: RefreshIndicator(
            onRefresh: _refresh,
            child: jobsAsync.when(
              loading: () => const CenteredListBody(
                child: CircularProgressIndicator(strokeWidth: 2.6),
              ),
              error: (error, _) => CenteredListBody(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Unable to load jobs',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '$error',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 12),
                    OutlinedButton.icon(
                      onPressed: _refresh,
                      icon: const Icon(Icons.refresh_rounded),
                      label: const Text('Retry'),
                    ),
                  ],
                ),
              ),
              data: _buildJobList,
            ),
          ),
        ),
      ],
    );
  }
}

class _WorkerSkillsTab extends ConsumerWidget {
  const _WorkerSkillsTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSkills = ref.watch(workerSkillsProvider);
    final suggestState = ref.watch(skillSuggestControllerProvider);

    // When a skill is picked in the overlay, also add it to workerSkillsProvider
    // We do this by watching suggested selections via a listener pattern on the
    // overlay selection (the SkillSuggestField calls notifier.selectSkill).
    // Use an inline sync via a post-frame callback to bridge the two providers.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      for (final skill in suggestState.selected) {
        ref
            .read(workerSkillsProvider.notifier)
            .toggleSkill(skill.skillName, true);
      }
    });

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('Your Skills', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 6),
        Text(
          'Search and add skills. These are sent to the server to filter your job feed.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 16),
        // ── Skill search ──
        Card(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: SkillSuggestField(
              controllerProvider: skillSuggestControllerProvider,
              label: 'Add Skill',
              hintText: 'Type to search skills…',
            ),
          ),
        ),
        const SizedBox(height: 12),
        // ── Currently saved skills from workerSkillsProvider ──
        if (selectedSkills.isNotEmpty) ...[
          Text(
            'Saved Skills (${selectedSkills.length})',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: selectedSkills.map((skill) {
              return Chip(
                label: Text(skill),
                deleteIcon: const Icon(Icons.close, size: 16),
                onDeleted: () => ref
                    .read(workerSkillsProvider.notifier)
                    .toggleSkill(skill, false),
              );
            }).toList(),
          ),
        ] else
          Card(
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Text(
                'No skills added yet. Search above to add relevant skills.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
      ],
    );
  }
}

// _WorkerAccountTab removed – replaced by ProfileScreen in IndexedStack

class _WorkerJobWorkflowSheet extends ConsumerStatefulWidget {
  const _WorkerJobWorkflowSheet({
    required this.jobId,
    required this.scrollController,
  });

  final int jobId;
  final ScrollController scrollController;

  @override
  ConsumerState<_WorkerJobWorkflowSheet> createState() =>
      _WorkerJobWorkflowSheetState();
}

class _WorkerJobWorkflowSheetState
    extends ConsumerState<_WorkerJobWorkflowSheet> {
  JobItem? _job;
  List<BidItem> _bids = const <BidItem>[];
  bool _loading = true;
  bool _working = false;
  String? _error;

  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _partnerNameController = TextEditingController();
  final TextEditingController _partnerFeeController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  final TextEditingController _startCodeController = TextEditingController();
  final TextEditingController _releaseCodeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _amountController.dispose();
    _partnerNameController.dispose();
    _partnerFeeController.dispose();
    _notesController.dispose();
    _startCodeController.dispose();
    _releaseCodeController.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final repo = ref.read(jobRepositoryProvider);
      final detail = await repo.fetchJobForCurrentRole(widget.jobId);
      final bids = await repo.fetchBids(widget.jobId);

      if (!mounted) {
        return;
      }

      setState(() {
        _job = detail;
        _bids = bids;
        _loading = false;
      });
    } catch (error) {
      if (!mounted) {
        return;
      }
      setState(() {
        _loading = false;
        _error = error.toString();
      });
    }
  }

  Future<void> _runAction(
    Future<void> Function() action, {
    String? successMessage,
    bool reload = true,
  }) async {
    setState(() {
      _working = true;
    });

    try {
      await action();
      if (!mounted) {
        return;
      }

      if (successMessage != null && successMessage.isNotEmpty) {
        AppNotifier.showSuccess(context, successMessage);
      }

      if (reload) {
        await _load();
      }
    } catch (error) {
      if (!mounted) {
        return;
      }
      AppNotifier.showError(context, error.toString());
    } finally {
      if (mounted) {
        setState(() {
          _working = false;
        });
      }
    }
  }

  Future<void> _placeBid() {
    final amount = double.tryParse(_amountController.text.trim());
    if (amount == null || amount <= 0) {
      AppNotifier.showWarning(context, 'Enter a valid offer amount');
      return Future<void>.value();
    }

    return _runAction(() async {
      await ref
          .read(jobRepositoryProvider)
          .placeBid(
            PlaceBidInput(
              jobId: widget.jobId,
              amount: amount,
              partnerName: _partnerNameController.text,
              partnerFee: double.tryParse(_partnerFeeController.text.trim()),
              notes: _notesController.text,
            ),
          );
    }, successMessage: 'Offer submitted successfully');
  }

  Future<void> _respondHandshake(bool accepted, int bidId) {
    return _runAction(() async {
      await ref
          .read(jobRepositoryProvider)
          .handshakeBid(bidId: bidId, accepted: accepted);
    }, successMessage: accepted ? 'Handshake accepted' : 'Handshake declined');
  }

  Future<void> _verifyStartCode() {
    final code = _startCodeController.text.trim();
    if (code.isEmpty) {
      AppNotifier.showWarning(context, 'Enter start code first');
      return Future<void>.value();
    }

    return _runAction(() async {
      await ref
          .read(jobRepositoryProvider)
          .verifyStartCode(jobId: widget.jobId, code: code);
    }, successMessage: 'Start code verified. Task is now in progress.');
  }

  Future<void> _verifyReleaseCode() {
    final code = _releaseCodeController.text.trim();
    if (code.isEmpty) {
      AppNotifier.showWarning(
        context,
        'Enter the release code from the client',
      );
      return Future<void>.value();
    }

    return _runAction(() async {
      await ref
          .read(jobRepositoryProvider)
          .verifyReleaseCode(jobId: widget.jobId, code: code);
    }, successMessage: 'Work confirmed — payment released!');
  }

  BidItem? _myBid(AuthState authState) {
    final workerId = authState.userId;
    if (workerId == null) {
      return null;
    }

    for (final bid in _bids) {
      if (bid.workerId == workerId) {
        return bid;
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);

    if (_loading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_error != null || _job == null) {
      return ListView(
        controller: widget.scrollController,
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 120),
          Text(
            'Unable to load task details',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Text(
            _error ?? 'Unknown error',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: _load,
            icon: const Icon(Icons.refresh_rounded),
            label: const Text('Retry'),
          ),
        ],
      );
    }

    final job = _job!;
    final statusCode = job.statusCode.toUpperCase();
    final myBid = _myBid(authState);
    final canPlaceBid = statusCode == 'OPEN_FOR_BIDS' && myBid == null;
    final canHandshake =
        myBid != null &&
        myBid.status.toUpperCase() == 'SELECTED' &&
        statusCode == 'BID_SELECTED_AWAITING_HANDSHAKE';
    final canVerifyStart = statusCode == 'READY_TO_START';
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final escrowMode = (job.paymentMode ?? '').toUpperCase() == 'ESCROW';

    return ListView(
      controller: widget.scrollController,
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
      children: [
        // ── Header: title + status ────────────────────────────────
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                job.title,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: job.status.color.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(99),
                border: Border.all(
                  color: job.status.color.withValues(alpha: 0.4),
                ),
              ),
              child: Text(
                job.status.label,
                style: theme.textTheme.labelMedium?.copyWith(
                  color: job.status.color,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          job.description,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: colors.onSurfaceVariant,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 14),

        // ── Details card ──────────────────────────────────────────
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
            side: BorderSide(color: colors.outlineVariant),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            child: Column(
              children: [
                _WorkerDetailRow(
                  icon: escrowMode
                      ? Icons.lock_outline_rounded
                      : Icons.currency_rupee_rounded,
                  label: 'Budget',
                  value:
                      '₹${job.budget.toStringAsFixed(0)}${escrowMode ? ' (Escrow)' : ' (Cash)'}',
                  iconColor: colors.primary,
                ),
                const Divider(height: 16),
                _WorkerDetailRow(
                  icon: Icons.location_on_outlined,
                  label: 'Location',
                  value: job.location,
                ),
                if (job.distanceKm != null) ...[
                  const Divider(height: 16),
                  _WorkerDetailRow(
                    icon: Icons.near_me_outlined,
                    label: 'Distance',
                    value: '${job.distanceKm!.toStringAsFixed(1)} km away',
                  ),
                ],
                if (job.requiredSkillNames.isNotEmpty) ...[
                  const Divider(height: 16),
                  _WorkerDetailRow(
                    icon: Icons.handyman_outlined,
                    label: 'Skills',
                    value: job.requiredSkillNames.join(', '),
                  ),
                ],
              ],
            ),
          ),
        ),
        const SizedBox(height: 14),

        // ── Progress indicator ────────────────────────────────────
        if (_working) ...[
          const LinearProgressIndicator(minHeight: 2.4),
          const SizedBox(height: 10),
        ],

        // ── My existing bid ───────────────────────────────────────
        if (myBid != null) ...[
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: BorderSide(
                color: myBid.status.toUpperCase() == 'SELECTED'
                    ? AppPalette.success.withValues(alpha: 0.5)
                    : colors.outlineVariant,
                width: myBid.status.toUpperCase() == 'SELECTED' ? 1.5 : 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.gavel_rounded,
                        size: 18,
                        color: myBid.status.toUpperCase() == 'SELECTED'
                            ? AppPalette.success
                            : colors.onSurfaceVariant,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Your Offer',
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 9,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: myBid.status.toUpperCase() == 'SELECTED'
                              ? AppPalette.success.withValues(alpha: 0.12)
                              : myBid.status.toUpperCase() == 'REJECTED'
                              ? AppPalette.danger.withValues(alpha: 0.1)
                              : colors.surfaceContainerHighest,
                          borderRadius: BorderRadius.circular(99),
                        ),
                        child: Text(
                          myBid.status.toUpperCase() == 'SELECTED'
                              ? 'Selected'
                              : myBid.status.toUpperCase() == 'REJECTED'
                              ? 'Rejected'
                              : 'Pending',
                          style: theme.textTheme.labelSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: myBid.status.toUpperCase() == 'SELECTED'
                                ? AppPalette.success
                                : myBid.status.toUpperCase() == 'REJECTED'
                                ? AppPalette.danger
                                : colors.onSurfaceVariant,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '₹${myBid.bidAmount.toStringAsFixed(0)}',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w800,
                          color: colors.primary,
                        ),
                      ),
                      if (myBid.partnerFee != null && myBid.partnerFee! > 0)
                        Text(
                          ' + ₹${myBid.partnerFee!.toStringAsFixed(0)} partner fee',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colors.onSurfaceVariant,
                          ),
                        ),
                    ],
                  ),
                  if (myBid.notes != null &&
                      myBid.notes!.trim().isNotEmpty) ...[
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: colors.surfaceContainerLowest,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        myBid.notes!,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colors.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
        ],

        // ── Place new bid ─────────────────────────────────────────
        if (canPlaceBid) ...[
          Text(
            'Place Your Offer',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: BorderSide(color: colors.outlineVariant),
            ),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                children: [
                  TextField(
                    controller: _amountController,
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    decoration: const InputDecoration(
                      labelText: 'Your offer amount',
                      prefixIcon: Icon(Icons.currency_rupee_rounded),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _notesController,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      labelText: 'Message to client (optional)',
                      alignLabelWithHint: true,
                      prefixIcon: Icon(Icons.notes_rounded),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Partner fields in an expansion section
                  ExpansionTile(
                    tilePadding: EdgeInsets.zero,
                    title: Text(
                      'Add a partner (optional)',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                    ),
                    leading: Icon(
                      Icons.group_outlined,
                      color: colors.onSurfaceVariant,
                    ),
                    shape: const Border(),
                    children: [
                      TextField(
                        controller: _partnerNameController,
                        decoration: const InputDecoration(
                          labelText: 'Partner name',
                          prefixIcon: Icon(Icons.person_outline_rounded),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: _partnerFeeController,
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                        decoration: const InputDecoration(
                          labelText: 'Partner fee',
                          prefixIcon: Icon(Icons.paid_outlined),
                        ),
                      ),
                      const SizedBox(height: 4),
                    ],
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton.icon(
                      onPressed: _working ? null : _placeBid,
                      icon: const Icon(Icons.gavel_rounded),
                      label: const Text('Submit Offer'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
        ],

        // ── Handshake response ────────────────────────────────────
        if (canHandshake) ...[
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppPalette.success.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: AppPalette.success.withValues(alpha: 0.3),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.handshake_outlined,
                      color: AppPalette.success,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Client Selected Your Offer!',
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppPalette.success,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  'Accept to confirm this job, or decline if you\'re no longer available.',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colors.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: FilledButton.icon(
                  onPressed: _working
                      ? null
                      : () => _respondHandshake(true, myBid.id),
                  icon: const Icon(Icons.check_rounded),
                  label: const Text('Accept Job'),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: _working
                      ? null
                      : () => _respondHandshake(false, myBid.id),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppPalette.danger,
                    side: BorderSide(
                      color: AppPalette.danger.withValues(alpha: 0.5),
                    ),
                  ),
                  icon: const Icon(Icons.close_rounded),
                  label: const Text('Decline'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
        ],

        // ── Start code verification ───────────────────────────────
        if (canVerifyStart) ...[
          Text(
            'Ready to Begin?',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'Ask the client for the start code and enter it below to officially begin work.',
            style: theme.textTheme.bodySmall?.copyWith(
              color: colors.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _startCodeController,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleLarge?.copyWith(
              letterSpacing: 6,
              fontWeight: FontWeight.w700,
            ),
            decoration: const InputDecoration(
              labelText: 'Start Code',
              prefixIcon: Icon(Icons.key_rounded),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              onPressed: _working ? null : _verifyStartCode,
              icon: const Icon(Icons.play_circle_outline_rounded),
              label: const Text('Verify & Start Work'),
            ),
          ),
          const SizedBox(height: 12),
        ],

        // ── In-progress: release code ─────────────────────────────
        if (statusCode == 'IN_PROGRESS') ...[
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppPalette.warning.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: AppPalette.warning.withValues(alpha: 0.3),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.construction_rounded,
                  color: AppPalette.warning,
                  size: 22,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Work In Progress',
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppPalette.warning,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Once done, ask the client for the 6-digit release code.',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colors.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _releaseCodeController,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleLarge?.copyWith(
              letterSpacing: 6,
              fontWeight: FontWeight.w700,
            ),
            decoration: const InputDecoration(
              labelText: 'Release Code',
              prefixIcon: Icon(Icons.verified_outlined),
              helperText: 'Enter the 6-digit code from the client',
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              onPressed: _working ? null : _verifyReleaseCode,
              icon: const Icon(Icons.check_circle_outline_rounded),
              label: const Text('Confirm Work Completed'),
            ),
          ),
        ],
      ],
    );
  }
}

/// A single icon + label + value row used inside details cards.
class _WorkerDetailRow extends StatelessWidget {
  const _WorkerDetailRow({
    required this.icon,
    required this.label,
    required this.value,
    this.iconColor,
  });

  final IconData icon;
  final String label;
  final String value;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 18, color: iconColor ?? colors.onSurfaceVariant),
        const SizedBox(width: 10),
        SizedBox(
          width: 72,
          child: Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: colors.onSurfaceVariant,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
