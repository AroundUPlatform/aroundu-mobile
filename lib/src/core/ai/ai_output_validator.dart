import '../../features/jobs/model/ai_suggested_bid.dart';
import '../../features/jobs/model/job_item.dart';
import '../../features/jobs/model/parsed_job_data.dart';
import '../logging/app_logger.dart';

// ── Violation types ─────────────────────────────────────────────────

/// Severity of a validation violation.
enum AIViolationSeverity {
  /// Data is unusable or would cause an API error.
  critical,

  /// Data is degraded but still usable (truncated, clamped, etc.).
  warning,
}

/// A single validation issue found in AI output.
class AIViolation {
  const AIViolation({
    required this.field,
    required this.message,
    required this.severity,
    this.rawValue,
  });

  final String field;
  final String message;
  final AIViolationSeverity severity;
  final Object? rawValue;

  @override
  String toString() => '[$severity] $field: $message';
}

// ── Validation result ───────────────────────────────────────────────

/// Result of validating an AI-generated output.
///
/// [value] is always populated when the output contains *any* usable data,
/// enabling partial-fill + user correction. [isValid] is `true` only when
/// there are zero critical violations.
class AIValidationResult<T> {
  const AIValidationResult._({
    required this.value,
    required this.isValid,
    required this.violations,
  });

  /// The sanitised output value (may be partial).
  final T? value;

  /// `true` when there are no critical violations.
  final bool isValid;

  /// All violations found during validation.
  final List<AIViolation> violations;

  /// Whether [value] is non-null and can be shown to the user for editing.
  bool get canPartiallyUse => value != null;

  /// Only the critical violations.
  List<AIViolation> get criticalViolations => violations
      .where((v) => v.severity == AIViolationSeverity.critical)
      .toList();

  /// Only warnings (data was sanitised but usable).
  List<AIViolation> get warnings => violations
      .where((v) => v.severity == AIViolationSeverity.warning)
      .toList();

  /// Build a fully-valid result.
  factory AIValidationResult.valid(T value) =>
      AIValidationResult._(value: value, isValid: true, violations: const []);

  /// Build a result with violations – [isValid] is derived from severity.
  factory AIValidationResult.partial(T? value, List<AIViolation> violations) {
    final hasCritical = violations.any(
      (v) => v.severity == AIViolationSeverity.critical,
    );
    return AIValidationResult._(
      value: value,
      isValid: !hasCritical,
      violations: violations,
    );
  }
}

// ── Validator ───────────────────────────────────────────────────────

final _log = AppLogger.tag('AIValidator');

/// Centralised validator for all AI-generated outputs in AroundU.
///
/// Each method:
/// 1. Constructs a typed model via its canonical `fromMap()` / factory.
/// 2. Checks constraints imported from the model class itself (never
///    hard-coded here).
/// 3. Returns an [AIValidationResult] that always provides a partial-fill
///    value when any usable data exists.
/// 4. Logs violations at warning level for observability.
class AIOutputValidator {
  AIOutputValidator._(); // static-only

  // ── Bid suggestion ──────────────────────────────────────────────

  /// Validate a decoded JSON map as an [AISuggestedBid].
  static AIValidationResult<AISuggestedBid> validateBid(
    Map<String, dynamic> raw,
  ) {
    final bid = AISuggestedBid.fromMap(raw);
    final violations = <AIViolation>[];

    if (bid.price <= 0) {
      violations.add(
        const AIViolation(
          field: 'price',
          message: 'Price must be greater than zero.',
          severity: AIViolationSeverity.critical,
        ),
      );
    }

    if (bid.message.trim().isEmpty) {
      violations.add(
        const AIViolation(
          field: 'message',
          message: 'Message must not be empty.',
          severity: AIViolationSeverity.critical,
        ),
      );
    } else if (bid.message.length > AISuggestedBid.maxMessageLength) {
      violations.add(
        AIViolation(
          field: 'message',
          message:
              'Message exceeds ${AISuggestedBid.maxMessageLength} chars – truncated.',
          severity: AIViolationSeverity.warning,
          rawValue: bid.message.length,
        ),
      );
      // Return a truncated copy.
      final truncated = AISuggestedBid(
        price: bid.price,
        message: bid.message.substring(0, AISuggestedBid.maxMessageLength),
        estimatedTime: bid.estimatedTime,
        rationale: bid.rationale,
      );
      _logViolations('Bid', violations);
      return AIValidationResult.partial(truncated, violations);
    }

    if (violations.isEmpty) return AIValidationResult.valid(bid);

    _logViolations('Bid', violations);
    return AIValidationResult.partial(bid, violations);
  }

  // ── Parsed job ──────────────────────────────────────────────────

  /// Validate a decoded JSON map as a [ParsedJobData].
  static AIValidationResult<ParsedJobData> validateParsedJob(
    Map<String, dynamic> raw,
  ) {
    final parsed = ParsedJobData.fromMap(raw);
    final violations = <AIViolation>[];

    for (final field in parsed.missingFields) {
      violations.add(
        AIViolation(
          field: field,
          message: '$field could not be extracted.',
          severity: AIViolationSeverity.warning,
        ),
      );
    }

    // Budget sanity: fromMap already returns null for non-positive, but if
    // the raw value was present and bad, log it.
    final rawBudget = raw['budget'];
    if (rawBudget != null && parsed.budget == null) {
      violations.add(
        AIViolation(
          field: 'budget',
          message: 'Invalid budget value dropped.',
          severity: AIViolationSeverity.warning,
          rawValue: rawBudget,
        ),
      );
    }

    // Urgency sanity: if raw had a value that was rejected.
    final rawUrgency = raw['jobUrgency'];
    if (rawUrgency != null && parsed.jobUrgency == null) {
      violations.add(
        AIViolation(
          field: 'jobUrgency',
          message:
              'Invalid urgency "$rawUrgency" dropped. '
              'Valid: ${ParsedJobData.validUrgencies.join(", ")}.',
          severity: AIViolationSeverity.warning,
          rawValue: rawUrgency,
        ),
      );
    }

    if (violations.isEmpty) return AIValidationResult.valid(parsed);

    _logViolations('ParsedJob', violations);
    // Always return the parsed value — even partial data lets the user edit.
    return AIValidationResult.partial(parsed, violations);
  }

  // ── Chat reply suggestions ──────────────────────────────────────

  /// Maximum character length per suggestion (UX constraint).
  static const int _maxSuggestionLength = 80;

  /// Validate a decoded JSON list as chat reply suggestions.
  static AIValidationResult<List<String>> validateChatSuggestions(
    List<Object?> raw,
  ) {
    final violations = <AIViolation>[];
    final result = <String>[];

    for (var i = 0; i < raw.length && result.length < 3; i++) {
      final item = raw[i];
      if (item is! String) {
        violations.add(
          AIViolation(
            field: 'suggestions[$i]',
            message: 'Non-string item dropped.',
            severity: AIViolationSeverity.warning,
            rawValue: item,
          ),
        );
        continue;
      }

      final trimmed = item.trim();
      if (trimmed.isEmpty) {
        violations.add(
          AIViolation(
            field: 'suggestions[$i]',
            message: 'Empty suggestion dropped.',
            severity: AIViolationSeverity.warning,
          ),
        );
        continue;
      }

      if (trimmed.length > _maxSuggestionLength) {
        violations.add(
          AIViolation(
            field: 'suggestions[$i]',
            message:
                'Suggestion truncated from ${trimmed.length} to '
                '$_maxSuggestionLength chars.',
            severity: AIViolationSeverity.warning,
            rawValue: trimmed.length,
          ),
        );
        result.add(trimmed.substring(0, _maxSuggestionLength));
      } else {
        result.add(trimmed);
      }
    }

    if (result.isEmpty) {
      violations.add(
        const AIViolation(
          field: 'suggestions',
          message: 'No valid suggestions produced.',
          severity: AIViolationSeverity.critical,
        ),
      );
      _logViolations('ChatSuggestions', violations);
      return AIValidationResult.partial(const <String>[], violations);
    }

    if (violations.isNotEmpty) _logViolations('ChatSuggestions', violations);
    return violations.isEmpty
        ? AIValidationResult.valid(result)
        : AIValidationResult.partial(result, violations);
  }

  // ── Job rankings ──────────────────────────────────────────────

  /// Validate a decoded JSON map as job rankings.
  ///
  /// Returns a `Map<int, double>` of `jobId → score` that is guaranteed to
  /// include every job from [allJobs] (unscored jobs default to 0.0).
  static AIValidationResult<Map<int, double>> validateJobRankings(
    Map<String, dynamic> raw,
    List<JobItem> allJobs,
  ) {
    final violations = <AIViolation>[];

    final rankingsList = raw['rankings'];
    if (rankingsList is! List) {
      violations.add(
        const AIViolation(
          field: 'rankings',
          message: 'Missing or invalid "rankings" array.',
          severity: AIViolationSeverity.critical,
        ),
      );
      _logViolations('JobRankings', violations);
      return AIValidationResult.partial(null, violations);
    }

    final validJobIds = {for (final j in allJobs) j.jobId};
    final scores = <int, double>{};

    for (var i = 0; i < rankingsList.length; i++) {
      final entry = rankingsList[i];
      if (entry is! Map<String, dynamic>) continue;

      final id = entry['jobId'];
      final score = entry['score'];
      if (id is! int || score is! num) continue;

      if (!validJobIds.contains(id)) {
        violations.add(
          AIViolation(
            field: 'rankings[$i].jobId',
            message: 'Hallucinated job ID $id dropped.',
            severity: AIViolationSeverity.warning,
            rawValue: id,
          ),
        );
        continue;
      }

      var clamped = score.toDouble();
      if (clamped < 0.0 || clamped > 1.0) {
        violations.add(
          AIViolation(
            field: 'rankings[$i].score',
            message: 'Score $clamped clamped to [0.0, 1.0].',
            severity: AIViolationSeverity.warning,
            rawValue: clamped,
          ),
        );
        clamped = clamped.clamp(0.0, 1.0);
      }

      scores[id] = clamped;
    }

    // Ensure every input job has a score.
    for (final job in allJobs) {
      if (!scores.containsKey(job.jobId)) {
        scores[job.jobId] = 0.0;
        violations.add(
          AIViolation(
            field: 'rankings',
            message: 'Job ${job.jobId} not scored by AI – defaulted to 0.0.',
            severity: AIViolationSeverity.warning,
          ),
        );
      }
    }

    if (violations.isNotEmpty) _logViolations('JobRankings', violations);
    return violations.any((v) => v.severity == AIViolationSeverity.critical)
        ? AIValidationResult.partial(scores, violations)
        : scores.isEmpty
        ? AIValidationResult.partial(null, violations)
        : AIValidationResult.partial(scores, violations);
  }

  // ── Logging helper ────────────────────────────────────────────

  static void _logViolations(String context, List<AIViolation> violations) {
    for (final v in violations) {
      final prefix = v.severity == AIViolationSeverity.critical
          ? 'CRITICAL'
          : 'WARN';
      _log.w('[$prefix][$context] ${v.field}: ${v.message}');
    }
  }
}
