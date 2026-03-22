/// Specification for an on-device AI model available in the catalog.
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

  /// Badge shown in the UI, e.g. "Fastest", "Recommended".
  final String badge;

  const ModelSpec({
    required this.id,
    required this.name,
    required this.shortName,
    required this.description,
    required this.url,
    required this.memoryBytes,
    required this.storageBytes,
    required this.displaySize,
    required this.badge,
  });

  /// RAM requirement as a human-readable string.
  String get ramDisplay {
    final gb = memoryBytes / (1024 * 1024 * 1024);
    return gb >= 1
        ? '${gb.toStringAsFixed(1)} GB RAM'
        : '${(memoryBytes / (1024 * 1024)).round()} MB RAM';
  }
}

/// Built-in catalog of models users can choose from.
///
/// These are general-purpose instruction-following models (not code-specific)
/// since AroundU uses them for task/bid analysis rather than code review.
const List<ModelSpec> kModelCatalog = [
  ModelSpec(
    id: 'qwen2.5-0.5b-q4',
    name: 'Qwen 2.5 0.5B Q4',
    shortName: 'Qwen 0.5B',
    description: 'Ultra-lightweight model. Fast on any device.',
    url:
        'https://huggingface.co/bartowski/Qwen2.5-0.5B-Instruct-GGUF/resolve/main/Qwen2.5-0.5B-Instruct-Q4_K_M.gguf',
    memoryBytes: 536870912, // 512 MB
    storageBytes: 419430400, // ~400 MB
    displaySize: '~400 MB',
    badge: 'Fastest',
  ),
  ModelSpec(
    id: 'qwen2.5-1.5b-q4',
    name: 'Qwen 2.5 1.5B Q4',
    shortName: 'Qwen 1.5B',
    description: 'Best balance of speed and quality.',
    url:
        'https://huggingface.co/bartowski/Qwen2.5-1.5B-Instruct-GGUF/resolve/main/Qwen2.5-1.5B-Instruct-Q4_K_M.gguf',
    memoryBytes: 1288490188, // ~1.2 GB
    storageBytes: 943718400, // ~900 MB
    displaySize: '~900 MB',
    badge: 'Recommended',
  ),
  ModelSpec(
    id: 'qwen2.5-3b-q4',
    name: 'Qwen 2.5 3B Q4',
    shortName: 'Qwen 3B',
    description: 'Smarter analysis — needs a powerful device.',
    url:
        'https://huggingface.co/bartowski/Qwen2.5-3B-Instruct-GGUF/resolve/main/Qwen2.5-3B-Instruct-Q4_K_M.gguf',
    memoryBytes: 2362232012, // ~2.2 GB
    storageBytes: 2040109465, // ~1.9 GB
    displaySize: '~1.9 GB',
    badge: 'Smarter',
  ),
  ModelSpec(
    id: 'phi-3.5-mini-q4',
    name: 'Phi-3.5 Mini 3.8B Q4',
    shortName: 'Phi 3.5',
    description: 'General-purpose reasoning model by Microsoft.',
    url:
        'https://huggingface.co/bartowski/Phi-3.5-mini-instruct-GGUF/resolve/main/Phi-3.5-mini-instruct-Q4_K_M.gguf',
    memoryBytes: 3006477107, // ~2.8 GB
    storageBytes: 2469606195, // ~2.3 GB
    displaySize: '~2.3 GB',
    badge: 'General',
  ),
];

/// Look up a [ModelSpec] by its [id]. Returns `null` if not found.
ModelSpec? findModelSpec(String id) {
  for (final spec in kModelCatalog) {
    if (spec.id == id) return spec;
  }
  return null;
}
