import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../auth/data/auth_api.dart';
import '../../auth/view_model/auth_view_model.dart';
import '../../chat/model/chat_models.dart';
import '../../chat/view/chat_detail_view.dart';
import '../../chat/view/conversations_view.dart';
import '../../chat/view_model/chat_view_model.dart';
import '../../profile/view/profile_view.dart';
import '../../review/view/leave_review_view.dart';
import '../../../core/network/api_exception.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/app_notification.dart';
import '../../../core/widgets/payment_status_banner.dart';
import '../../../core/widgets/primary_button.dart';
import '../model/job_item.dart';
import '../model/job_workflow_models.dart';
import '../view_model/job_view_model.dart';
import '../view_model/navigation_view_model.dart';
import '../view_model/skill_suggest_view_model.dart';
import 'location_picker_screen.dart';
import 'widgets/job_card.dart';
import 'widgets/job_shared_widgets.dart';
import 'widgets/skill_suggest_field.dart';
import '../../../core/l10n/l10n_extension.dart';
import '../../ai/view/ai_analysis_panel.dart';
import '../../ai/view_model/ai_service_provider.dart';

class ProviderShellScreen extends ConsumerStatefulWidget {
  const ProviderShellScreen({super.key});

  @override
  ConsumerState<ProviderShellScreen> createState() =>
      _ProviderShellScreenState();
}

class _ProviderShellScreenState extends ConsumerState<ProviderShellScreen> {
  @override
  Widget build(BuildContext context) {
    final tabIndex = ref.watch(providerTabIndexProvider);

    // Auto-refresh the jobs list whenever the user switches back to the tasks tab.
    ref.listen<int>(providerTabIndexProvider, (previous, next) {
      if (next == 0 && (previous ?? -1) != 0) {
        ref.invalidate(providerJobsControllerProvider);
        for (final f in ProviderJobFilter.values) {
          ref.invalidate(providerFilteredJobsProvider(f));
        }
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(
          [
            context.l10n.providerTabMyTasks,
            context.l10n.providerTabPostTask,
            context.l10n.conversations,
            context.l10n.profile,
          ][tabIndex],
        ),
      ),
      body: IndexedStack(
        index: tabIndex,
        children: const [
          _ProviderJobsTab(),
          _CreateJobTab(),
          ConversationsScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: tabIndex,
        onDestinationSelected: (index) {
          ref.read(providerTabIndexProvider.notifier).setIndex(index);
        },
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.work_outline_rounded),
            selectedIcon: const Icon(Icons.work_rounded),
            label: context.l10n.tasksNavLabel,
          ),
          NavigationDestination(
            icon: const Icon(Icons.add_circle_outline_rounded),
            selectedIcon: const Icon(Icons.add_circle_rounded),
            label: context.l10n.postNavLabel,
          ),
          NavigationDestination(
            icon: const Icon(Icons.chat_bubble_outline_rounded),
            selectedIcon: const Icon(Icons.chat_bubble_rounded),
            label: context.l10n.conversations,
          ),
          NavigationDestination(
            icon: const Icon(Icons.person_outline_rounded),
            selectedIcon: const Icon(Icons.person_rounded),
            label: context.l10n.profile,
          ),
        ],
      ),
    );
  }
}

class _ProviderJobsTab extends ConsumerStatefulWidget {
  const _ProviderJobsTab();

  @override
  ConsumerState<_ProviderJobsTab> createState() => _ProviderJobsTabState();
}

class _ProviderJobsTabState extends ConsumerState<_ProviderJobsTab>
    with WidgetsBindingObserver {
  ProviderJobFilter _activeFilter = ProviderJobFilter.all;
  Timer? _refreshTimer;

  static const List<({ProviderJobFilter filter, IconData icon})> _chips = [
    (filter: ProviderJobFilter.all, icon: Icons.work_outline_rounded),
    (filter: ProviderJobFilter.open, icon: Icons.public_rounded),
    (filter: ProviderJobFilter.active, icon: Icons.handshake_outlined),
    (filter: ProviderJobFilter.inProgress, icon: Icons.construction_rounded),
    (
      filter: ProviderJobFilter.completed,
      icon: Icons.check_circle_outline_rounded,
    ),
    (filter: ProviderJobFilter.cancelled, icon: Icons.cancel_outlined),
    (filter: ProviderJobFilter.expired, icon: Icons.timer_off_outlined),
  ];

  static Map<ProviderJobFilter, String> _emptyMessages(BuildContext context) =>
      {
        ProviderJobFilter.all: context.l10n.noTasksPostedYet,
        ProviderJobFilter.open: context.l10n.noOpenTasks,
        ProviderJobFilter.active: context.l10n.noActiveTasks,
        ProviderJobFilter.inProgress: context.l10n.noTasksInProgress,
        ProviderJobFilter.completed: context.l10n.noCompletedTasks,
        ProviderJobFilter.cancelled: context.l10n.noCancelledTasks,
        ProviderJobFilter.expired: context.l10n.noExpiredTasks,
      };

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    // Poll every 30 s while the tab is alive so status changes made by the
    // worker on another device are reflected without manual pull-to-refresh.
    _refreshTimer = Timer.periodic(
      const Duration(seconds: 30),
      (_) => _invalidateAll(),
    );
  }

  @override
  void dispose() {
    _refreshTimer?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _invalidateAll();
    }
  }

  void _invalidateAll() {
    ref.invalidate(providerJobsControllerProvider);
    for (final f in ProviderJobFilter.values) {
      ref.invalidate(providerFilteredJobsProvider(f));
    }
  }

  Future<void> _refresh() {
    if (_activeFilter == ProviderJobFilter.all) {
      return ref.read(providerJobsControllerProvider.notifier).refresh();
    }
    ref.invalidate(providerFilteredJobsProvider(_activeFilter));
    return Future.value();
  }

  Future<void> _openWorkflowSheet(BuildContext context, JobItem job) async {
    await showModalBottomSheet<bool>(
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
          return _ProviderJobWorkflowSheet(
            jobId: job.jobId,
            scrollController: controller,
          );
        },
      ),
    );
    _invalidateAll();
  }

  Widget _buildChipBar() {
    final chipLabels = <ProviderJobFilter, String>{
      ProviderJobFilter.all: context.l10n.filterAll,
      ProviderJobFilter.open: context.l10n.filterOpen,
      ProviderJobFilter.active: context.l10n.filterActive,
      ProviderJobFilter.inProgress: context.l10n.filterInProgress,
      ProviderJobFilter.completed: context.l10n.filterCompleted,
      ProviderJobFilter.cancelled: context.l10n.filterCancelled,
      ProviderJobFilter.expired: context.l10n.filterExpired,
    };
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
            label: Text(chipLabels[chip.filter]!),
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

  Widget _buildJobList(BuildContext context, List<JobItem> jobs) {
    if (jobs.isEmpty) {
      final message =
          _emptyMessages(context)[_activeFilter] ?? 'No tasks found';
      return CenteredListBody(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/ProviderEmptyScreen.png',
              height: 160,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10),
            Text(message, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 6),
            Text(
              context.l10n.pullDownToRefresh,
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
          duration: Duration(milliseconds: 220 + (index * 40)),
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
            onTap: () => _openWorkflowSheet(context, job),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<JobItem>> jobsAsync =
        _activeFilter == ProviderJobFilter.all
        ? ref.watch(providerJobsControllerProvider)
        : ref.watch(providerFilteredJobsProvider(_activeFilter));

    return Column(
      children: [
        const SizedBox(height: 10),
        _buildChipBar(),
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
                      context.l10n.unableToLoadTasks,
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
                      label: Text(context.l10n.retry),
                    ),
                  ],
                ),
              ),
              data: (jobs) => _buildJobList(context, jobs),
            ),
          ),
        ),
      ],
    );
  }
}

class _CreateJobTab extends ConsumerStatefulWidget {
  const _CreateJobTab();

  @override
  ConsumerState<_CreateJobTab> createState() => _CreateJobTabState();
}

class _CreateJobTabState extends ConsumerState<_CreateJobTab> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _budgetController = TextEditingController();

  String _urgency = 'NORMAL';
  String _paymentMode = 'OFFLINE';
  AddressInfo? _selectedAddress;
  bool _isRegisteringAddress = false;

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _budgetController.dispose();
    super.dispose();
  }

  String? _required(String? value, String field) {
    if (value == null || value.trim().isEmpty) {
      return context.l10n.fieldRequired(field);
    }
    return null;
  }

  Future<void> _openLocationPicker() async {
    final picked = await Navigator.of(context).push<AddressInfo>(
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (_) => const LocationPickerScreen(),
      ),
    );
    if (picked == null || !mounted) return;

    // If the address already has a backend ID, use it directly.
    if (picked.id != null) {
      setState(() => _selectedAddress = picked);
      return;
    }

    // Otherwise we need to register the pinned location first.
    setState(() => _isRegisteringAddress = true);
    try {
      final auth = ref.read(authControllerProvider);
      final authApi = ref.read(authApiProvider);
      final registered = await authApi.addAddress(
        token: auth.token!,
        clientId: auth.userId!,
        address: picked,
      );
      await ref.read(authControllerProvider.notifier).refreshProfile();
      if (mounted) setState(() => _selectedAddress = registered);
    } on ApiException catch (e) {
      if (mounted) AppNotifier.showError(context, e.userMessage);
    } catch (_) {
      if (mounted)
        AppNotifier.showError(context, context.l10n.failedToSaveLocation);
    } finally {
      if (mounted) setState(() => _isRegisteringAddress = false);
    }
  }

  Future<void> _submit() async {
    final form = _formKey.currentState;
    if (form == null || !form.validate()) return;

    final selectedSkillNames = ref
        .read(skillSuggestControllerProvider.notifier)
        .selectedNames;
    if (selectedSkillNames.isEmpty) {
      AppNotifier.showWarning(context, context.l10n.addSkillWarning);
      return;
    }

    final budget = double.tryParse(_budgetController.text.trim());
    if (budget == null || budget <= 0) {
      AppNotifier.showWarning(context, context.l10n.enterValidBudget);
      return;
    }

    final auth = ref.read(authControllerProvider);
    final locationId = _selectedAddress?.id ?? auth.currentAddressId;
    if (locationId == null) {
      AppNotifier.showWarning(context, context.l10n.setJobLocationWarning);
      return;
    }

    final input = NewJobInput(
      title: _titleController.text.trim(),
      description: _descriptionController.text.trim(),
      category: '',
      budget: budget,
      skillNames: selectedSkillNames,
      jobUrgency: _urgency,
      paymentMode: _paymentMode,
      overrideLocationId: locationId,
    );

    final success = await ref
        .read(createJobControllerProvider.notifier)
        .submit(input);

    if (!mounted) return;

    if (success) {
      _titleController.clear();
      _descriptionController.clear();
      _budgetController.clear();
      ref.read(skillSuggestControllerProvider.notifier).clearAll();
      setState(() {
        _urgency = 'NORMAL';
        _paymentMode = 'OFFLINE';
        _selectedAddress = null;
      });

      AppNotifier.showSuccess(context, context.l10n.jobPostedSuccess);
      ref.read(providerTabIndexProvider.notifier).setIndex(0);
      return;
    }

    final message = _submitErrorMessage(
      ref.read(createJobControllerProvider).error,
    );
    AppNotifier.showError(context, message);
  }

  String _submitErrorMessage(Object? error) {
    if (error is ApiException) return error.userMessage;
    final message = error?.toString().trim();
    if (message == null || message.isEmpty) {
      return context.l10n.failedToPostJob;
    }
    return message;
  }

  @override
  Widget build(BuildContext context) {
    final submitState = ref.watch(createJobControllerProvider);
    final auth = ref.watch(authControllerProvider);
    final isSubmitting = submitState.isLoading;

    final displayAddress = _selectedAddress ?? auth.currentAddressFull;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.postNewTask,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 6),
            Text(
              context.l10n.postTaskSubtitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
            AnimatedContainer(
              duration: const Duration(milliseconds: 220),
              curve: Curves.easeOut,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ── Title ──────────────────────────────────────────
                      TextFormField(
                        controller: _titleController,
                        textInputAction: TextInputAction.next,
                        validator: (value) =>
                            _required(value, context.l10n.taskTitleLabel),
                        decoration: InputDecoration(
                          labelText: context.l10n.taskTitleLabel,
                          prefixIcon: const Icon(Icons.title_rounded),
                        ),
                      ),
                      const SizedBox(height: 12),

                      // ── Skills ─────────────────────────────────────────
                      SkillSuggestField(
                        controllerProvider: skillSuggestControllerProvider,
                      ),
                      const SizedBox(height: 12),

                      // ── Budget ─────────────────────────────────────────
                      TextFormField(
                        controller: _budgetController,
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                        textInputAction: TextInputAction.next,
                        validator: (value) =>
                            _required(value, context.l10n.jobBudget),
                        decoration: InputDecoration(
                          labelText: context.l10n.jobBudget,
                          prefixIcon: const Icon(Icons.currency_rupee_rounded),
                        ),
                      ),
                      const SizedBox(height: 12),

                      // ── Description ────────────────────────────────────
                      TextFormField(
                        controller: _descriptionController,
                        maxLines: 4,
                        textInputAction: TextInputAction.newline,
                        validator: (value) =>
                            _required(value, context.l10n.jobDescription),
                        decoration: InputDecoration(
                          labelText: context.l10n.jobDescription,
                          alignLabelWithHint: true,
                          prefixIcon: const Icon(Icons.description_outlined),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // ── Urgency ────────────────────────────────────────
                      Text(
                        context.l10n.jobUrgency,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        children: [
                          _UrgencyChip(
                            label: context.l10n.urgencyNormal,
                            value: 'NORMAL',
                            icon: Icons.schedule_rounded,
                            color: Colors.green,
                            selected: _urgency == 'NORMAL',
                            onTap: () => setState(() => _urgency = 'NORMAL'),
                          ),
                          _UrgencyChip(
                            label: context.l10n.urgencyMedium,
                            value: 'MEDIUM',
                            icon: Icons.hourglass_bottom_rounded,
                            color: Colors.amber,
                            selected: _urgency == 'MEDIUM',
                            onTap: () => setState(() => _urgency = 'MEDIUM'),
                          ),
                          _UrgencyChip(
                            label: context.l10n.urgencyUrgent,
                            value: 'URGENT',
                            icon: Icons.priority_high_rounded,
                            color: Colors.orange,
                            selected: _urgency == 'URGENT',
                            onTap: () => setState(() => _urgency = 'URGENT'),
                          ),
                          _UrgencyChip(
                            label: context.l10n.urgencyAsap,
                            value: 'SUPER_URGENT',
                            icon: Icons.flash_on_rounded,
                            color: Colors.red,
                            selected: _urgency == 'SUPER_URGENT',
                            onTap: () =>
                                setState(() => _urgency = 'SUPER_URGENT'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // ── Payment Mode ───────────────────────────────────
                      Text(
                        context.l10n.paymentMethod,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const SizedBox(height: 8),
                      SegmentedButton<String>(
                        segments: [
                          ButtonSegment(
                            value: 'OFFLINE',
                            label: Text(context.l10n.payInCash),
                            icon: const Icon(Icons.payments_outlined),
                          ),
                          ButtonSegment(
                            value: 'ESCROW',
                            label: Text(context.l10n.secureEscrow),
                            icon: const Icon(Icons.lock_outline_rounded),
                          ),
                        ],
                        selected: {_paymentMode},
                        onSelectionChanged: (selected) {
                          if (selected.isNotEmpty) {
                            setState(() => _paymentMode = selected.first);
                          }
                        },
                        style: SegmentedButton.styleFrom(
                          visualDensity: VisualDensity.compact,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // ── Location ───────────────────────────────────────
                      Text(
                        context.l10n.jobLocation,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const SizedBox(height: 8),
                      _isRegisteringAddress
                          ? Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 12),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CircularProgressIndicator(strokeWidth: 2),
                                    SizedBox(width: 10),
                                    Text(context.l10n.savingLocation),
                                  ],
                                ),
                              ),
                            )
                          : InkWell(
                              borderRadius: BorderRadius.circular(12),
                              onTap: _openLocationPicker,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 14,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.outlineVariant,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_rounded,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.primary,
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: displayAddress != null
                                          ? Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  // Full address is the rich primary label
                                                  displayAddress.fullAddress ??
                                                      displayAddress
                                                          .displayName,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium
                                                      ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                // Short area/city as subtitle when different
                                                if (displayAddress
                                                        .displayName !=
                                                    (displayAddress
                                                            .fullAddress ??
                                                        displayAddress
                                                            .displayName))
                                                  Text(
                                                    displayAddress.displayName,
                                                    style: Theme.of(
                                                      context,
                                                    ).textTheme.bodySmall,
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                              ],
                                            )
                                          : Text(
                                              context.l10n.tapToSelectLocation,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                    color: Theme.of(
                                                      context,
                                                    ).colorScheme.outline,
                                                  ),
                                            ),
                                    ),
                                    const Icon(Icons.chevron_right_rounded),
                                  ],
                                ),
                              ),
                            ),
                      const SizedBox(height: 12),

                      // ── AI Analysis ─────────────────────────────────
                      AIAnalysisPanel(
                        useCase: AIUseCase.taskEnhancer,
                        inputBuilder: () =>
                            'Title: ${_titleController.text}\n'
                            'Description: ${_descriptionController.text}\n'
                            'Budget: ${_budgetController.text}\n'
                            'Urgency: $_urgency',
                      ),
                      const SizedBox(height: 20),

                      // ── Submit ─────────────────────────────────────────
                      PrimaryButton(
                        label: context.l10n.postTaskButton,
                        isLoading: isSubmitting,
                        onPressed: _submit,
                      ),
                      if (submitState.hasError) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Error: ${submitState.error}',
                          style: const TextStyle(color: AppPalette.danger),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// A compact choice chip used for the urgency selector.
class _UrgencyChip extends StatelessWidget {
  const _UrgencyChip({
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final String value;
  final IconData icon;
  final Color color;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(label),
      avatar: Icon(icon, size: 16, color: selected ? Colors.white : color),
      selected: selected,
      onSelected: (_) => onTap(),
      selectedColor: color,
      checkmarkColor: Colors.white,
      labelStyle: TextStyle(
        color: selected ? Colors.white : null,
        fontWeight: selected ? FontWeight.w600 : null,
      ),
      showCheckmark: false,
    );
  }
}

// _ProviderAccountTab removed – replaced by ProfileScreen in IndexedStack

class _ProviderJobWorkflowSheet extends ConsumerStatefulWidget {
  const _ProviderJobWorkflowSheet({
    required this.jobId,
    required this.scrollController,
  });

  final int jobId;
  final ScrollController scrollController;

  @override
  ConsumerState<_ProviderJobWorkflowSheet> createState() =>
      _ProviderJobWorkflowSheetState();
}

class _ProviderJobWorkflowSheetState
    extends ConsumerState<_ProviderJobWorkflowSheet> {
  JobItem? _job;
  List<BidItem> _bids = const <BidItem>[];
  JobCodeInfo? _codeInfo;
  PaymentInfo? _paymentInfo;
  bool _loading = true;
  bool _working = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
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

      // Auto-load codes for statuses where codes exist and the client needs
      // to see them (start code while READY_TO_START, release code while
      // IN_PROGRESS or COMPLETED_PENDING_PAYMENT).
      JobCodeInfo? codes;
      final statusUpper = detail.statusCode.toUpperCase();
      if (statusUpper == 'READY_TO_START' ||
          statusUpper == 'IN_PROGRESS' ||
          statusUpper == 'COMPLETED_PENDING_PAYMENT') {
        try {
          codes = await repo.fetchCodes(widget.jobId);
        } catch (_) {
          // Not yet generated or fetch failed — silently ignore
        }
      }

      if (!mounted) {
        return;
      }

      setState(() {
        _job = detail;
        _bids = bids;
        _codeInfo = codes ?? _codeInfo;
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

  Future<void> _acceptBid(BidItem bid) {
    return _runAction(() async {
      await ref.read(jobRepositoryProvider).acceptBid(bid.id);
      // Refresh the top-level jobs list so the updated status is reflected
      // immediately when the sheet is dismissed.
      ref.invalidate(providerJobsControllerProvider);
    }, successMessage: context.l10n.offerAcceptedSnack);
  }

  Future<void> _generateCodes() {
    return _runAction(() async {
      final result = await ref
          .read(jobRepositoryProvider)
          .generateCodes(widget.jobId);
      _codeInfo = result;
    }, successMessage: context.l10n.taskCodesGenerated);
  }

  Future<void> _regenerateCodes() {
    return _runAction(() async {
      final result = await ref
          .read(jobRepositoryProvider)
          .regenerateCodes(widget.jobId);
      _codeInfo = result;
    }, successMessage: context.l10n.newReleaseCodeGenerated);
  }

  Future<void> _lockEscrow() {
    final job = _job;
    if (job == null) {
      return Future<void>.value();
    }

    return _runAction(() async {
      _paymentInfo = await ref
          .read(jobRepositoryProvider)
          .lockEscrow(jobId: widget.jobId, amount: job.budget);
    }, successMessage: context.l10n.paymentSafelyReserved);
  }

  Future<void> _cancelJob() {
    return _runAction(
      () async {
        _job = await ref
            .read(jobRepositoryProvider)
            .updateJobStatus(jobId: widget.jobId, newStatus: 'CANCELLED');
      },
      successMessage: context.l10n.taskCancelled,
      reload: true,
    );
  }

  Future<void> _deleteJob() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(context.l10n.deleteTaskTitle),
          content: Text(context.l10n.deleteTaskConfirm),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text(context.l10n.cancel),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              style: FilledButton.styleFrom(backgroundColor: AppPalette.danger),
              child: Text(context.l10n.delete),
            ),
          ],
        );
      },
    );

    if (confirmed != true) {
      return;
    }

    await _runAction(
      () async {
        await ref.read(jobRepositoryProvider).deleteJob(widget.jobId);
      },
      successMessage: context.l10n.taskDeleted,
      reload: false,
    );

    if (!mounted) {
      return;
    }

    ref.invalidate(providerJobsControllerProvider);
    ref.invalidate(providerPastJobsControllerProvider);
    Navigator.pop(context, true);
  }

  /// Opens the chat with the selected worker. If a conversation for this
  /// job already exists it is opened directly; otherwise a small compose
  /// dialog lets the client send the first message, which creates the
  /// conversation on the backend.
  Future<void> _openChat(BidItem bid) async {
    // Check whether a conversation already exists for this job + worker.
    final groups =
        ref.read(groupedConversationsControllerProvider).valueOrNull ?? [];

    Conversation? existing;
    for (final group in groups) {
      if (group.jobId != widget.jobId) continue;
      for (final conv in group.conversations) {
        if (conv.participantOneId == bid.workerId ||
            conv.participantTwoId == bid.workerId) {
          existing = conv;
          break;
        }
      }
      if (existing != null) break;
    }

    if (!mounted) return;

    if (existing != null) {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (_) => ChatDetailScreen(
            conversationId: existing!.id,
            jobId: existing.jobId,
            otherUserId: bid.workerId,
            otherUserName: context.l10n.workerNumber(bid.workerId),
            jobTitle: _job!.title,
          ),
        ),
      );
      return;
    }

    // No conversation yet — show compose dialog so the client sends first.
    final firstMessage = await showDialog<String>(
      context: context,
      builder: (_) => const _MessageWorkerDialog(),
    );

    if (firstMessage == null || firstMessage.isEmpty || !mounted) return;

    setState(() => _working = true);
    try {
      final auth = ref.read(authControllerProvider);
      final chatApi = ref.read(chatApiProvider);
      final rawMsg = await chatApi.sendMessage(
        token: auth.token!,
        jobId: widget.jobId,
        recipientId: bid.workerId,
        content: firstMessage,
      );

      // The backend response includes the created message with conversationId.
      final conversationId = rawMsg['conversationId'] is num
          ? (rawMsg['conversationId'] as num).toInt()
          : int.tryParse(rawMsg['conversationId']?.toString() ?? '') ?? 0;

      ref.invalidate(groupedConversationsControllerProvider);
      ref.invalidate(conversationsControllerProvider);

      if (!mounted) return;

      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (_) => ChatDetailScreen(
            conversationId: conversationId,
            jobId: widget.jobId,
            otherUserId: bid.workerId,
            otherUserName: context.l10n.workerNumber(bid.workerId),
            jobTitle: _job!.title,
          ),
        ),
      );
    } catch (e) {
      if (!mounted) return;
      AppNotifier.showError(context, context.l10n.failedToSendMessage);
    } finally {
      if (mounted) setState(() => _working = false);
    }
  }

  @override
  Widget build(BuildContext context) {
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
            context.l10n.unableToLoadJobWorkflow,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Text(
            _error ?? context.l10n.unknownError,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: _load,
            icon: const Icon(Icons.refresh_rounded),
            label: Text(context.l10n.retry),
          ),
        ],
      );
    }

    final job = _job!;
    final statusCode = job.statusCode.toUpperCase();
    final canGenerateCodes =
        statusCode == 'BID_SELECTED_AWAITING_HANDSHAKE' ||
        statusCode == 'READY_TO_START';
    // Cancellation only valid for early-stage statuses (backend enforces this too)
    const cancelableStatuses = {
      'OPEN_FOR_BIDS',
      'CREATED',
      'BID_SELECTED_AWAITING_HANDSHAKE',
      'READY_TO_START',
      'IN_PROGRESS',
    };
    final canCancel = cancelableStatuses.contains(statusCode);
    // Deleting active/payment-locked jobs causes 500 on the server
    const unsafeDeletionStatuses = {
      'IN_PROGRESS',
      'READY_TO_START',
      'BID_SELECTED_AWAITING_HANDSHAKE',
      'COMPLETED_PENDING_PAYMENT',
    };
    final canDelete = !unsafeDeletionStatuses.contains(statusCode);
    final canRelease = statusCode == 'IN_PROGRESS';
    final escrowMode = (job.paymentMode ?? '').toUpperCase() == 'ESCROW';
    final canLockEscrow = statusCode == 'READY_TO_START' && escrowMode;
    final isReviewable =
        statusCode == 'COMPLETED' || statusCode == 'PAYMENT_RELEASED';
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return ListView(
      controller: widget.scrollController,
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
      children: [
        // ── Header: title + status badge ──────────────────────────
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
                job.status.localizedLabel(context),
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
                _DetailRow(
                  icon: escrowMode
                      ? Icons.lock_outline_rounded
                      : Icons.currency_rupee_rounded,
                  label: context.l10n.detailBudgetLabel,
                  value:
                      '₹${job.budget.toStringAsFixed(0)}${escrowMode ? ' (Escrow)' : ' (Cash)'}',
                  iconColor: colors.primary,
                ),
                const Divider(height: 16),
                _DetailRow(
                  icon: Icons.location_on_outlined,
                  label: context.l10n.detailLocationLabel,
                  value: job.location,
                ),
                if (job.requiredSkillNames.isNotEmpty) ...[
                  const Divider(height: 16),
                  _DetailRow(
                    icon: Icons.handyman_outlined,
                    label: context.l10n.detailSkillsLabel,
                    value: job.requiredSkillNames.join(', '),
                  ),
                ],
                const Divider(height: 16),
                _DetailRow(
                  icon: Icons.tag_rounded,
                  label: context.l10n.detailJobIdLabel,
                  value: job.id,
                  valueStyle: theme.textTheme.bodyMedium?.copyWith(
                    fontFamily: 'monospace',
                    color: colors.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),

        // ── Offers section ────────────────────────────────────────
        Row(
          children: [
            const Icon(Icons.gavel_rounded, size: 18),
            const SizedBox(width: 6),
            Text(
              context.l10n.offersSection,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(width: 6),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
              decoration: BoxDecoration(
                color: colors.primaryContainer,
                borderRadius: BorderRadius.circular(99),
              ),
              child: Text(
                '${_bids.length}',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: colors.onPrimaryContainer,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        if (_bids.isEmpty)
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: BorderSide(color: colors.outlineVariant),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.inbox_outlined, color: colors.onSurfaceVariant),
                  const SizedBox(width: 10),
                  Text(
                    context.l10n.noOffersReceivedYet,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          )
        else
          ..._bids.map((bid) {
            final bStatus = bid.status.toUpperCase();
            final canAcceptBid =
                statusCode == 'OPEN_FOR_BIDS' && bStatus == 'PENDING';
            final isSelected = bStatus == 'SELECTED';

            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                  side: BorderSide(
                    color: isSelected
                        ? AppPalette.success.withValues(alpha: 0.5)
                        : colors.outlineVariant,
                    width: isSelected ? 1.5 : 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: isSelected
                                ? AppPalette.success.withValues(alpha: 0.15)
                                : colors.surfaceContainerHighest,
                            child: Icon(
                              Icons.person_outline_rounded,
                              size: 20,
                              color: isSelected
                                  ? AppPalette.success
                                  : colors.onSurfaceVariant,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  context.l10n.workerNumber(bid.workerId),
                                  style: theme.textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  bStatus == 'SELECTED'
                                      ? context.l10n.offerAccepted
                                      : bStatus == 'REJECTED'
                                      ? context.l10n.offerRejected
                                      : context.l10n.offerPending,
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: isSelected
                                        ? AppPalette.success
                                        : bStatus == 'REJECTED'
                                        ? AppPalette.danger
                                        : colors.onSurfaceVariant,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '₹${bid.bidAmount.toStringAsFixed(0)}',
                                style: theme.textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: colors.primary,
                                ),
                              ),
                              if (bid.partnerFee != null && bid.partnerFee! > 0)
                                Text(
                                  '+₹${bid.partnerFee!.toStringAsFixed(0)} partner',
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: colors.onSurfaceVariant,
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                      if (bid.notes != null &&
                          bid.notes!.trim().isNotEmpty) ...[
                        const SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: colors.surfaceContainerLowest,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            bid.notes!,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: colors.onSurfaceVariant,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                      if (canAcceptBid) ...[
                        const SizedBox(height: 12),
                        SizedBox(
                          width: double.infinity,
                          child: FilledButton.icon(
                            onPressed: _working ? null : () => _acceptBid(bid),
                            icon: const Icon(
                              Icons.check_circle_outline_rounded,
                            ),
                            label: Text(context.l10n.acceptThisOffer),
                          ),
                        ),
                      ],
                      // Message button — only for the selected worker so the
                      // client always initiates the conversation first.
                      if (isSelected) ...[
                        const SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton.icon(
                            onPressed: _working ? null : () => _openChat(bid),
                            icon: const Icon(Icons.chat_bubble_outline_rounded),
                            label: Text(context.l10n.messageWorker),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            );
          }),

        // ── Progress indicator ────────────────────────────────────
        if (_working) ...[
          const SizedBox(height: 6),
          const LinearProgressIndicator(minHeight: 2.4),
          const SizedBox(height: 6),
        ] else
          const SizedBox(height: 6),

        // ── Context-sensitive actions ─────────────────────────────
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 220),
          child: Column(
            key: ValueKey<String>(statusCode),
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Generate / show start code
              if (canGenerateCodes && _codeInfo?.startCode == null) ...[
                FilledButton.icon(
                  onPressed: _working ? null : _generateCodes,
                  icon: const Icon(Icons.key_rounded),
                  label: Text(context.l10n.generateStartCode),
                ),
                const SizedBox(height: 10),
              ],
              if (_codeInfo?.startCode != null) ...[
                _CodeCard(
                  title: context.l10n.startCode,
                  icon: Icons.lock_open_rounded,
                  code: _codeInfo!.startCode!,
                  onCopy: () {
                    Clipboard.setData(
                      ClipboardData(text: _codeInfo!.startCode!),
                    );
                    AppNotifier.showInfo(context, context.l10n.startCodeCopied);
                  },
                ),
                const SizedBox(height: 10),
              ],

              // Escrow lock
              if (canLockEscrow) ...[
                FilledButton.icon(
                  onPressed: _working ? null : _lockEscrow,
                  icon: const Icon(Icons.lock_rounded),
                  label: Text(
                    context.l10n.reserveInEscrow(
                      '₹',
                      job.budget.toStringAsFixed(0),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
              if (_paymentInfo != null) ...[
                PaymentStatusBanner(
                  status: _paymentInfo!.status,
                  amount: job.budget,
                  currency: 'INR',
                ),
                const SizedBox(height: 10),
              ],

              // Release code section
              if (canRelease) ...[
                if (_codeInfo?.releaseCode != null) ...[
                  _CodeCard(
                    title: context.l10n.releaseCode,
                    icon: Icons.verified_outlined,
                    code: _codeInfo!.releaseCode!,
                    onCopy: () {
                      Clipboard.setData(
                        ClipboardData(text: _codeInfo!.releaseCode!),
                      );
                      AppNotifier.showInfo(
                        context,
                        context.l10n.releaseCodeCopied,
                      );
                    },
                    subtitle: context.l10n.releaseCodeHint,
                  ),
                  const SizedBox(height: 8),
                  OutlinedButton.icon(
                    onPressed: _working ? null : _regenerateCodes,
                    icon: const Icon(Icons.refresh_rounded),
                    label: Text(context.l10n.regenerateCode),
                  ),
                ] else
                  OutlinedButton.icon(
                    onPressed: _working ? null : _regenerateCodes,
                    icon: const Icon(Icons.lock_open_rounded),
                    label: Text(context.l10n.generateReleaseCode),
                  ),
                const SizedBox(height: 10),
              ],

              // Review
              if (isReviewable) ...[
                FilledButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<bool>(
                        builder: (_) => LeaveReviewScreen(
                          jobId: widget.jobId,
                          workerName:
                              _bids
                                  .where(
                                    (b) => b.status.toUpperCase() == 'SELECTED',
                                  )
                                  .map(
                                    (b) =>
                                        context.l10n.workerNumber(b.workerId),
                                  )
                                  .firstOrNull ??
                              'Worker',
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.rate_review_outlined),
                  label: Text(context.l10n.leaveReview),
                ),
                const SizedBox(height: 10),
              ],

              // Danger zone: cancel + delete
              const SizedBox(height: 4),
              const Divider(),
              const SizedBox(height: 8),
              if (canCancel)
                OutlinedButton.icon(
                  onPressed: _working ? null : _cancelJob,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppPalette.warning,
                    side: BorderSide(
                      color: AppPalette.warning.withValues(alpha: 0.6),
                    ),
                  ),
                  icon: const Icon(Icons.cancel_outlined),
                  label: Text(context.l10n.cancelTask),
                ),
              if (canCancel) const SizedBox(height: 8),
              if (canDelete)
                OutlinedButton.icon(
                  onPressed: _working ? null : _deleteJob,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppPalette.danger,
                    side: BorderSide(
                      color: AppPalette.danger.withValues(alpha: 0.6),
                    ),
                  ),
                  icon: const Icon(Icons.delete_outline_rounded),
                  label: Text(context.l10n.deleteTask),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

/// A single icon + label + value row used in detail cards.
class _DetailRow extends StatelessWidget {
  const _DetailRow({
    required this.icon,
    required this.label,
    required this.value,
    this.iconColor,
    this.valueStyle,
  });

  final IconData icon;
  final String label;
  final String value;
  final Color? iconColor;
  final TextStyle? valueStyle;

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
            style:
                valueStyle ??
                theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ],
    );
  }
}

/// Prominent display card for start/release codes.
class _CodeCard extends StatelessWidget {
  const _CodeCard({
    required this.title,
    required this.icon,
    required this.code,
    required this.onCopy,
    this.subtitle,
  });

  final String title;
  final IconData icon;
  final String code;
  final VoidCallback onCopy;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: colors.primaryContainer.withValues(alpha: 0.4),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: colors.primary.withValues(alpha: 0.25)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 18, color: colors.primary),
              const SizedBox(width: 8),
              Text(
                title,
                style: theme.textTheme.labelLarge?.copyWith(
                  color: colors.primary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.copy_rounded, size: 20),
                tooltip: context.l10n.tooltipCopy,
                color: colors.primary,
                onPressed: onCopy,
                visualDensity: VisualDensity.compact,
                padding: EdgeInsets.zero,
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            code,
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w800,
              letterSpacing: 6,
              color: colors.onSurface,
            ),
          ),
          if (subtitle != null) ...[
            const SizedBox(height: 6),
            Text(
              subtitle!,
              style: theme.textTheme.bodySmall?.copyWith(
                color: colors.onSurfaceVariant,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

/// Dialog that collects the first message when no conversation exists yet.
/// Owns its [TextEditingController] so the controller is always disposed via
/// the widget lifecycle — avoiding the "used after disposed" crash that occurs
/// when the controller is disposed manually and Flutter's route-exit animation
/// triggers a final rebuild of the dialog builder closure.
class _MessageWorkerDialog extends StatefulWidget {
  const _MessageWorkerDialog();

  @override
  State<_MessageWorkerDialog> createState() => _MessageWorkerDialogState();
}

class _MessageWorkerDialogState extends State<_MessageWorkerDialog> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.l10n.messageWorker),
      content: TextField(
        controller: _controller,
        autofocus: true,
        maxLines: 3,
        decoration: InputDecoration(hintText: context.l10n.typeFirstMessage),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(context.l10n.cancel),
        ),
        FilledButton(
          onPressed: () => Navigator.pop(context, _controller.text.trim()),
          child: Text(context.l10n.send),
        ),
      ],
    );
  }
}
