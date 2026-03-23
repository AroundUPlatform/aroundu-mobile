/// Structured job data extracted by the on-device AI from a free-text
/// problem description.
class ParsedJobData {
  const ParsedJobData({
    this.title,
    this.description,
    this.skillNames = const <String>[],
    this.jobUrgency,
    this.budget,
  });

  final String? title;
  final String? description;
  final List<String> skillNames;
  final String? jobUrgency;
  final double? budget;

  static const ParsedJobData empty = ParsedJobData();

  /// Whether the AI extracted enough to meaningfully pre-fill the form.
  bool get hasSufficientData =>
      (title != null && title!.trim().isNotEmpty) ||
      (description != null && description!.trim().isNotEmpty);

  /// Names of required fields that could not be extracted.
  List<String> get missingFields => <String>[
    if (title == null || title!.trim().isEmpty) 'title',
    if (description == null || description!.trim().isEmpty) 'description',
  ];

  static const validUrgencies = {'NORMAL', 'MEDIUM', 'URGENT', 'SUPER_URGENT'};

  /// Build from a decoded JSON map with safe null handling.
  factory ParsedJobData.fromMap(Map<String, dynamic> map) {
    final rawUrgency = map['jobUrgency']?.toString().toUpperCase();

    return ParsedJobData(
      title: _asNullableString(map['title']),
      description: _asNullableString(map['description']),
      skillNames: _asStringList(map['skillNames']),
      jobUrgency: rawUrgency != null && validUrgencies.contains(rawUrgency)
          ? rawUrgency
          : null,
      budget: _asPositiveDouble(map['budget']),
    );
  }

  // ── Helpers ──────────────────────────────────────────────────────

  static String? _asNullableString(Object? value) {
    if (value == null) return null;
    final s = value.toString().trim();
    return s.isEmpty ? null : s;
  }

  static List<String> _asStringList(Object? value) {
    if (value is List) {
      return value
          .map((e) => e?.toString().trim() ?? '')
          .where((s) => s.isNotEmpty)
          .toList();
    }
    return const <String>[];
  }

  static double? _asPositiveDouble(Object? value) {
    if (value == null) return null;
    final d = double.tryParse(value.toString());
    return (d != null && d > 0) ? d : null;
  }
}
