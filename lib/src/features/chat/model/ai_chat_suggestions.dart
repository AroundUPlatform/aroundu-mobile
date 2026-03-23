import 'dart:convert';

/// Holds AI-generated smart reply suggestions for a chat conversation.
class AIChatSuggestions {
  const AIChatSuggestions({required this.suggestions});

  final List<String> suggestions;

  /// Parse a JSON array string like `["reply1","reply2","reply3"]`.
  ///
  /// Drops empty entries and caps the list at 3 items.
  factory AIChatSuggestions.fromJsonArray(String rawJson) {
    final decoded = jsonDecode(rawJson);
    if (decoded is! List) return const AIChatSuggestions(suggestions: []);

    final cleaned = decoded
        .whereType<String>()
        .map((s) => s.trim())
        .where((s) => s.isNotEmpty)
        .take(3)
        .toList();

    return AIChatSuggestions(suggestions: cleaned);
  }

  bool get isEmpty => suggestions.isEmpty;
  bool get isNotEmpty => suggestions.isNotEmpty;
}
