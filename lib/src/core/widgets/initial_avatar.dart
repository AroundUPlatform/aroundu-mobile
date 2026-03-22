import 'package:flutter/material.dart';

/// Reusable circle avatar that shows the user's initial letter.
///
/// Used in conversation lists, review cards, admin user lists, and anywhere
/// a placeholder avatar is needed.
class InitialAvatar extends StatelessWidget {
  const InitialAvatar({
    super.key,
    required this.name,
    this.radius = 20,
    this.imageUrl,
    this.fontSize,
  });

  /// Display name — the first letter is used as the initial.
  final String? name;

  /// Outer radius of the avatar.
  final double radius;

  /// Optional network image URL. When set and non-empty the image is shown
  /// instead of the initial.
  final String? imageUrl;

  /// Font size override. Defaults to `radius * 0.9`.
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final initial = (name ?? 'U').isNotEmpty
        ? (name ?? 'U')[0].toUpperCase()
        : 'U';
    final effectiveFontSize = fontSize ?? radius * 0.9;

    if (imageUrl != null && imageUrl!.isNotEmpty) {
      return CircleAvatar(
        radius: radius,
        backgroundImage: NetworkImage(imageUrl!),
      );
    }

    return CircleAvatar(
      radius: radius,
      backgroundColor: cs.primary.withValues(alpha: 0.12),
      child: Text(
        initial,
        style: TextStyle(
          color: cs.primary,
          fontWeight: FontWeight.w700,
          fontSize: effectiveFontSize,
        ),
      ),
    );
  }
}
