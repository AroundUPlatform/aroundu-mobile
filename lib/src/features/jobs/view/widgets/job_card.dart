import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/network/exchange_rate_service.dart';
import '../../model/job_item.dart';

class JobCard extends ConsumerStatefulWidget {
  const JobCard({
    super.key,
    required this.job,
    this.showDistance = false,
    this.onTap,

    /// When set, a live conversion to this currency code is shown below the
    /// original price, e.g. "₹83,000" if job is in USD and worker uses INR.
    this.viewerCurrencyCode,
  });

  final JobItem job;
  final bool showDistance;
  final VoidCallback? onTap;
  final String? viewerCurrencyCode;

  @override
  ConsumerState<JobCard> createState() => _JobCardState();
}

class _JobCardState extends ConsumerState<JobCard> {
  double? _convertedAmount;

  @override
  void initState() {
    super.initState();
    _loadConversion();
  }

  Future<void> _loadConversion() async {
    final viewer = widget.viewerCurrencyCode?.toUpperCase();
    final jobCurrency = widget.job.currencyCode.toUpperCase();
    if (viewer == null || viewer == jobCurrency) return;

    final rate = await ref
        .read(exchangeRateServiceProvider)
        .getRate(jobCurrency, viewer);
    if (rate != null && mounted) {
      setState(() {
        _convertedAmount = widget.job.budget * rate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final job = widget.job;
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final due = DateFormat('dd MMM').format(job.dueDate);
    final budget = NumberFormat('#,##0.##').format(job.budget);
    final jobSymbol = currencySymbol(job.currencyCode);
    final isEscrow = job.paymentMode?.toUpperCase() == 'ESCROW';

    // Dual-currency display
    final viewer = widget.viewerCurrencyCode?.toUpperCase();
    final jobCurrency = job.currencyCode.toUpperCase();
    final showConversion =
        viewer != null && viewer != jobCurrency && _convertedAmount != null;
    final convertedText = showConversion
        ? '(${currencySymbol(viewer)}${NumberFormat('#,##0.##').format(_convertedAmount!)})'
        : null;

    final card = Container(
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: colors.outlineVariant.withValues(alpha: 0.6)),
        boxShadow: [
          BoxShadow(
            color: colors.shadow.withValues(alpha: 0.06),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Header band ───────────────────────────────────────────────
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: job.status.color.withValues(alpha: 0.08),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    job.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                _StatusPill(status: job.status),
              ],
            ),
          ),
          // ── Body ──────────────────────────────────────────────────────
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 10, 14, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  job.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colors.onSurfaceVariant,
                    height: 1.45,
                  ),
                ),
                const SizedBox(height: 12),
                // ── Location + Due row ──────────────────────────────
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 15,
                      color: colors.onSurfaceVariant,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        job.location,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colors.onSurfaceVariant,
                        ),
                      ),
                    ),
                    if (widget.showDistance && job.distanceKm != null) ...[
                      const SizedBox(width: 6),
                      _InlineTag(
                        icon: Icons.near_me_outlined,
                        label: '${job.distanceKm!.toStringAsFixed(1)} km',
                        color: colors.primary,
                      ),
                    ],
                  ],
                ),
                const SizedBox(height: 6),
                // ── Skills row ─────────────────────────────────────
                if (job.requiredSkillNames.isNotEmpty) ...[
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: job.requiredSkillNames
                          .take(4)
                          .map(
                            (s) => Padding(
                              padding: const EdgeInsets.only(right: 6),
                              child: _SkillChip(label: s),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
                const Divider(height: 1, thickness: 0.8),
                const SizedBox(height: 10),
                // ── Footer: budget · category · due ────────────────
                Row(
                  children: [
                    // Budget (currency symbol from job data, no icon duplication)
                    if (isEscrow)
                      Icon(
                        Icons.lock_outline_rounded,
                        size: 15,
                        color: colors.primary,
                      ),
                    if (isEscrow) const SizedBox(width: 3),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$jobSymbol$budget',
                          style: theme.textTheme.labelLarge?.copyWith(
                            color: colors.primary,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        if (convertedText != null)
                          Text(
                            convertedText,
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: colors.onSurfaceVariant,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                      ],
                    ),
                    if (isEscrow) ...[
                      const SizedBox(width: 4),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: colors.primaryContainer,
                          borderRadius: BorderRadius.circular(999),
                        ),
                        child: Text(
                          'Escrow',
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: colors.onPrimaryContainer,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                    const Spacer(),
                    // Category
                    Icon(
                      Icons.category_outlined,
                      size: 14,
                      color: colors.onSurfaceVariant,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      job.category,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colors.onSurfaceVariant,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 12),
                    // Due date
                    Icon(
                      Icons.event_outlined,
                      size: 14,
                      color: colors.onSurfaceVariant,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      due,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colors.onSurfaceVariant,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );

    if (widget.onTap == null) return card;

    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: widget.onTap,
        child: card,
      ),
    );
  }
}

/// Rounded pill badge showing the job status.
class _StatusPill extends StatelessWidget {
  const _StatusPill({required this.status});

  final JobStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: status.color.withValues(alpha: 0.14),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: status.color.withValues(alpha: 0.3)),
      ),
      child: Text(
        status.label,
        style: TextStyle(
          color: status.color,
          fontWeight: FontWeight.w700,
          fontSize: 11,
          letterSpacing: 0.2,
        ),
      ),
    );
  }
}

/// Small inline label used for distance or other tags.
class _InlineTag extends StatelessWidget {
  const _InlineTag({
    required this.icon,
    required this.label,
    required this.color,
  });

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 13, color: color),
        const SizedBox(width: 3),
        Text(
          label,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
      ],
    );
  }
}

/// Compact skill tag shown in the skill row.
class _SkillChip extends StatelessWidget {
  const _SkillChip({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
      decoration: BoxDecoration(
        color: colors.secondaryContainer.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: colors.outline.withValues(alpha: 0.25)),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color: colors.onSecondaryContainer,
        ),
      ),
    );
  }
}
