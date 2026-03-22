import 'package:aroundu/src/features/jobs/model/job_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('JobStatus enum', () {
    test('has 8 values', () {
      expect(JobStatus.values.length, 8);
    });

    test('all values have non-empty fallback labels', () {
      for (final status in JobStatus.values) {
        expect(status.label, isNotEmpty, reason: '${status.name} label');
      }
    });

    test('all values have non-null colors', () {
      for (final status in JobStatus.values) {
        expect(status.color, isNotNull, reason: '${status.name} color');
      }
    });

    test('fallback labels contain expected values', () {
      expect(JobStatus.openForBids.label, 'Open For Offers');
      expect(JobStatus.bidAccepted.label, 'Offer Accepted');
      expect(JobStatus.readyToStart.label, 'Ready to Start');
      expect(JobStatus.inProgress.label, 'In Progress');
      expect(JobStatus.completedPendingPayment.label, 'Pending Payment');
      expect(JobStatus.paymentReleased.label, 'Payment Released');
      expect(JobStatus.completed.label, 'Task Completed');
      expect(JobStatus.cancelled.label, 'Cancelled');
    });

    test('completed statuses use success color', () {
      expect(JobStatus.completed.color, const Color(0xFF2EAE63));
      expect(JobStatus.paymentReleased.color, const Color(0xFF2EAE63));
    });

    test('cancelled status uses danger color', () {
      expect(JobStatus.cancelled.color, const Color(0xFFD64545));
    });

    test('in-progress statuses use warning color', () {
      expect(JobStatus.inProgress.color, const Color(0xFFE49B12));
      expect(JobStatus.completedPendingPayment.color, const Color(0xFFE49B12));
    });
  });
}
