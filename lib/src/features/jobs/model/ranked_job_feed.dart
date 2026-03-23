import 'job_item.dart';

/// The result of AI-based job ranking, split into two sections.
class RankedJobFeed {
  const RankedJobFeed({
    required this.topMatches,
    required this.nearbyJobs,
    required this.isAiRanked,
  });

  /// Jobs scored above the relevance threshold.
  final List<JobItem> topMatches;

  /// Remaining jobs in their original order.
  final List<JobItem> nearbyJobs;

  /// Whether the feed was actually ranked by AI (false = fallback order).
  final bool isAiRanked;

  /// Fallback: all jobs go to [nearbyJobs] in their original API order.
  factory RankedJobFeed.fallback(List<JobItem> jobs) =>
      RankedJobFeed(topMatches: const [], nearbyJobs: jobs, isAiRanked: false);

  int get totalCount => topMatches.length + nearbyJobs.length;
}
