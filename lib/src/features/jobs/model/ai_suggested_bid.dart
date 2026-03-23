/// AI-generated bid suggestion for a job.
class AISuggestedBid {
  const AISuggestedBid({
    required this.price,
    required this.message,
    this.estimatedTime,
    this.rationale,
  });

  /// Maximum length for the bid message (aligned with API notes field).
  static const int maxMessageLength = 500;

  /// Suggested bid price (derived from job budget and complexity).
  final double price;

  /// Professional message/notes for the client.
  final String message;

  /// Human-readable time estimate (e.g. "2-3 hours", "1 day").
  final String? estimatedTime;

  /// Brief explanation of the suggestion (for transparency).
  final String? rationale;

  /// Whether this suggestion has valid, usable data.
  bool get isValid => price > 0 && message.trim().isNotEmpty;

  /// Parse from AI JSON output with robust null handling.
  factory AISuggestedBid.fromMap(Map<String, dynamic> map) {
    final rawPrice = map['price'];
    final price = (rawPrice is num ? rawPrice.toDouble() : 0.0).clamp(
      0.0,
      double.maxFinite,
    );

    final rawMessage = map['message'];
    final message = (rawMessage is String ? rawMessage.trim() : '');

    final rawTime = map['estimatedTime'];
    final estimatedTime = rawTime is String && rawTime.trim().isNotEmpty
        ? rawTime.trim()
        : null;

    final rawRationale = map['rationale'];
    final rationale = rawRationale is String && rawRationale.trim().isNotEmpty
        ? rawRationale.trim()
        : null;

    return AISuggestedBid(
      price: price,
      message: message,
      estimatedTime: estimatedTime,
      rationale: rationale,
    );
  }
}
