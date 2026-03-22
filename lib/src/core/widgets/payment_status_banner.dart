import 'package:flutter/material.dart';

import '../l10n/l10n_extension.dart';
import '../theme/app_theme.dart';

/// A reusable banner widget to show payment/escrow status
class PaymentStatusBanner extends StatelessWidget {
  const PaymentStatusBanner({
    super.key,
    required this.status,
    this.amount,
    this.currency,
  });

  final String status;
  final double? amount;
  final String? currency;

  @override
  Widget build(BuildContext context) {
    final config = _configForStatus(status, context);
    final amountText = amount != null && currency != null
        ? ' (${currency!} ${amount!.toStringAsFixed(2)})'
        : '';

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: config.color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: config.color.withValues(alpha: 0.3)),
      ),
      child: Row(
        children: [
          Icon(config.icon, color: config.color, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              '${config.label}$amountText',
              style: TextStyle(
                color: config.color,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _BannerConfig _configForStatus(String status, BuildContext context) {
    final l10n = context.l10n;
    switch (status.toUpperCase()) {
      case 'PENDING_ESCROW':
        return _BannerConfig(
          label: l10n.paymentStatusPending,
          icon: Icons.hourglass_empty_rounded,
          color: AppPalette.warning,
        );
      case 'ESCROW_LOCKED':
        return _BannerConfig(
          label: l10n.paymentStatusLocked,
          icon: Icons.lock_rounded,
          color: AppPalette.primary,
        );
      case 'ESCROW_RELEASED':
      case 'RELEASED':
        return _BannerConfig(
          label: l10n.paymentStatusReleased,
          icon: Icons.check_circle_rounded,
          color: AppPalette.success,
        );
      case 'OFFLINE':
        return _BannerConfig(
          label: l10n.paymentStatusOffline,
          icon: Icons.payments_outlined,
          color: AppPalette.textSecondary,
        );
      default:
        return _BannerConfig(
          label: l10n.paymentStatusGeneric(status),
          icon: Icons.info_outline_rounded,
          color: AppPalette.textSecondary,
        );
    }
  }
}

class _BannerConfig {
  const _BannerConfig({
    required this.label,
    required this.icon,
    required this.color,
  });

  final String label;
  final IconData icon;
  final Color color;
}
