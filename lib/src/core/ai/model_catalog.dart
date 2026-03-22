/// Specification for the on-device AI model.
class ModelSpec {
  final String id;
  final String name;
  final String shortName;
  final String description;
  final String url;

  /// Approximate RAM required to run the model (bytes).
  final int memoryBytes;

  /// Approximate download / on-disk size (bytes).
  final int storageBytes;

  /// Human-readable size string, e.g. "~900 MB".
  final String displaySize;

  const ModelSpec({
    required this.id,
    required this.name,
    required this.shortName,
    required this.description,
    required this.url,
    required this.memoryBytes,
    required this.storageBytes,
    required this.displaySize,
  });

  /// RAM requirement as a human-readable string.
  String get ramDisplay {
    final gb = memoryBytes / (1024 * 1024 * 1024);
    return gb >= 1
        ? '${gb.toStringAsFixed(1)} GB RAM'
        : '${(memoryBytes / (1024 * 1024)).round()} MB RAM';
  }
}

/// The single general-purpose multilingual model used by AroundU.
///
/// Qwen 2.5 1.5B Instruct (Q4_K_M) — best balance of quality, speed, and
/// multilingual support. Handles task analysis, bid insights, pricing
/// suggestions, and understands 29+ languages including all AroundU locales.
const ModelSpec kDefaultModel = ModelSpec(
  id: 'qwen2.5-1.5b-q4',
  name: 'Qwen 2.5 1.5B Q4',
  shortName: 'Qwen 1.5B',
  description:
      'General-purpose multilingual model. Supports 29+ languages with strong reasoning.',
  url:
      'https://huggingface.co/bartowski/Qwen2.5-1.5B-Instruct-GGUF/resolve/main/Qwen2.5-1.5B-Instruct-Q4_K_M.gguf',
  memoryBytes: 1288490188, // ~1.2 GB
  storageBytes: 943718400, // ~900 MB
  displaySize: '~900 MB',
);

/// Returns the [ModelSpec] for [id], or `null` if not in the catalog.
ModelSpec? findModelSpec(String id) {
  const catalog = [kDefaultModel];
  for (final spec in catalog) {
    if (spec.id == id) return spec;
  }
  return null;
}
