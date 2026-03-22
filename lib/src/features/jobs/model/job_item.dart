import 'package:flutter/material.dart';

import '../../../core/l10n/l10n_extension.dart';
import '../../../core/theme/app_theme.dart';

enum JobStatus {
  openForBids,
  bidAccepted,
  readyToStart,
  inProgress,
  completedPendingPayment,
  paymentReleased,
  completed,
  cancelled,
}

extension JobStatusView on JobStatus {
  /// Fallback English label (no context required). Prefer [localizedLabel].
  String get label {
    switch (this) {
      case JobStatus.openForBids:
        return 'Open For Offers';
      case JobStatus.bidAccepted:
        return 'Offer Accepted';
      case JobStatus.readyToStart:
        return 'Ready to Start';
      case JobStatus.inProgress:
        return 'In Progress';
      case JobStatus.completedPendingPayment:
        return 'Pending Payment';
      case JobStatus.paymentReleased:
        return 'Payment Released';
      case JobStatus.completed:
        return 'Task Completed';
      case JobStatus.cancelled:
        return 'Cancelled';
    }
  }

  /// Locale-aware label using the nearest [AppLocalizations].
  String localizedLabel(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case JobStatus.openForBids:
        return l10n.jobStatusOpenForOffers;
      case JobStatus.bidAccepted:
        return l10n.jobStatusOfferAccepted;
      case JobStatus.readyToStart:
        return l10n.jobStatusReadyToStart;
      case JobStatus.inProgress:
        return l10n.jobStatusInProgress;
      case JobStatus.completedPendingPayment:
        return l10n.jobStatusPendingPayment;
      case JobStatus.paymentReleased:
        return l10n.jobStatusPaymentReleased;
      case JobStatus.completed:
        return l10n.jobStatusTaskCompleted;
      case JobStatus.cancelled:
        return l10n.jobStatusCancelled;
    }
  }

  Color get color {
    switch (this) {
      case JobStatus.openForBids:
        return AppPalette.primary;
      case JobStatus.bidAccepted:
      case JobStatus.readyToStart:
        return AppPalette.primary;
      case JobStatus.inProgress:
        return AppPalette.warning;
      case JobStatus.completedPendingPayment:
        return AppPalette.warning;
      case JobStatus.paymentReleased:
        return AppPalette.success;
      case JobStatus.completed:
        return AppPalette.success;
      case JobStatus.cancelled:
        return AppPalette.danger;
    }
  }

  /// Whether the job is in an active (non-terminal) state.
  bool get isActive =>
      this != JobStatus.completed && this != JobStatus.cancelled;

  /// Whether the user can leave a review on this job.
  bool get isReviewEligible =>
      this == JobStatus.paymentReleased || this == JobStatus.completed;
}

class JobItem {
  const JobItem({
    this.jobId = 0,
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.location,
    required this.budget,
    this.currencyCode = 'INR',
    required this.createdAt,
    required this.dueDate,
    required this.status,
    this.statusCode = 'OPEN_FOR_BIDS',
    this.paymentMode,
    this.requiredSkillNames = const <String>[],
    this.distanceKm,
  });

  final int jobId;
  final String id;
  final String title;
  final String description;
  final String category;
  final String location;
  final double budget;
  final String currencyCode;
  final DateTime createdAt;
  final DateTime dueDate;
  final JobStatus status;
  final String statusCode;
  final String? paymentMode;
  final List<String> requiredSkillNames;
  final double? distanceKm;

  JobItem copyWith({
    int? jobId,
    String? id,
    String? title,
    String? description,
    String? category,
    String? location,
    double? budget,
    String? currencyCode,
    DateTime? createdAt,
    DateTime? dueDate,
    JobStatus? status,
    String? statusCode,
    String? paymentMode,
    List<String>? requiredSkillNames,
    double? distanceKm,
  }) {
    return JobItem(
      jobId: jobId ?? this.jobId,
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      category: category ?? this.category,
      location: location ?? this.location,
      budget: budget ?? this.budget,
      currencyCode: currencyCode ?? this.currencyCode,
      createdAt: createdAt ?? this.createdAt,
      dueDate: dueDate ?? this.dueDate,
      status: status ?? this.status,
      statusCode: statusCode ?? this.statusCode,
      paymentMode: paymentMode ?? this.paymentMode,
      requiredSkillNames: requiredSkillNames ?? this.requiredSkillNames,
      distanceKm: distanceKm ?? this.distanceKm,
    );
  }
}
