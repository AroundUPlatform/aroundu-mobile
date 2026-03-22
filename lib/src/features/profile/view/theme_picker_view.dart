import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/l10n/l10n_extension.dart';
import '../../../core/theme/theme_model.dart';
import '../../../core/view_model/theme_view_model.dart';

class ThemePickerScreen extends ConsumerWidget {
  const ThemePickerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(themeSettingsProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.appearance)),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: [
          // ── Mode selector ──────────────────────────────────────
          Text(context.l10n.modeLabel, style: theme.textTheme.titleMedium),
          const SizedBox(height: 12),
          SegmentedButton<ThemeMode>(
            segments: [
              ButtonSegment(
                value: ThemeMode.light,
                icon: const Icon(Icons.light_mode_rounded, size: 18),
                label: Text(context.l10n.lightMode),
              ),
              ButtonSegment(
                value: ThemeMode.system,
                icon: const Icon(Icons.brightness_auto_rounded, size: 18),
                label: Text(context.l10n.systemMode),
              ),
              ButtonSegment(
                value: ThemeMode.dark,
                icon: const Icon(Icons.dark_mode_rounded, size: 18),
                label: Text(context.l10n.darkMode),
              ),
            ],
            selected: {settings.mode},
            onSelectionChanged: (modes) {
              ref.read(themeSettingsProvider.notifier).setMode(modes.first);
              ref.read(themeModeProvider.notifier).setThemeMode(modes.first);
            },
          ),

          const SizedBox(height: 32),

          // ── Accent colour ──────────────────────────────────────
          Text(context.l10n.accentColour, style: theme.textTheme.titleMedium),
          const SizedBox(height: 12),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              for (final accent in AppAccentColor.values)
                if (accent != AppAccentColor.custom)
                  _ColorSwatch(
                    color: accent.color,
                    label: accent.label,
                    isSelected: settings.accent == accent,
                    onTap: () => ref
                        .read(themeSettingsProvider.notifier)
                        .setAccent(accent),
                  ),
              _ColorSwatch(
                color: settings.customColor ?? Colors.grey,
                label: context.l10n.customColour,
                isSelected: settings.accent == AppAccentColor.custom,
                showPicker: true,
                onTap: () async {
                  final picked = await _showColorPicker(
                    context,
                    settings.customColor ?? theme.colorScheme.primary,
                  );
                  if (picked != null) {
                    ref
                        .read(themeSettingsProvider.notifier)
                        .setCustomColor(picked);
                  }
                },
              ),
            ],
          ),

          const SizedBox(height: 32),

          // ── Preview ────────────────────────────────────────────
          Text(context.l10n.preview, style: theme.textTheme.titleMedium),
          const SizedBox(height: 12),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: theme.colorScheme.primary.withValues(
                          alpha: 0.12,
                        ),
                        child: Icon(
                          Icons.palette_outlined,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              context.l10n.previewTitle,
                              style: theme.textTheme.titleMedium,
                            ),
                            Text(
                              context.l10n.previewSubtitle,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      FilledButton(
                        onPressed: () {},
                        child: Text(context.l10n.primary),
                      ),
                      const SizedBox(width: 12),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text(context.l10n.secondary),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<Color?> _showColorPicker(BuildContext context, Color initial) async {
    Color picked = initial;
    final confirmed =
        await ColorPicker(
          color: initial,
          onColorChanged: (c) => picked = c,
          pickersEnabled: const <ColorPickerType, bool>{
            ColorPickerType.primary: true,
            ColorPickerType.accent: true,
            ColorPickerType.wheel: true,
          },
          enableShadesSelection: true,
          width: 40,
          height: 40,
          borderRadius: 20,
          heading: Text(
            context.l10n.pickAColour,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ).showPickerDialog(
          context,
          constraints: const BoxConstraints(
            minHeight: 460,
            minWidth: 300,
            maxWidth: 360,
          ),
        );
    return confirmed ? picked : null;
  }
}

class _ColorSwatch extends StatelessWidget {
  const _ColorSwatch({
    required this.color,
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.showPicker = false,
  });

  final Color color;
  final String label;
  final bool isSelected;
  final bool showPicker;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: showPicker && !isSelected ? Colors.transparent : color,
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected
                    ? color
                    : Theme.of(context).colorScheme.outlineVariant,
                width: isSelected ? 3 : 1.5,
              ),
              gradient: showPicker && !isSelected
                  ? const SweepGradient(
                      colors: [
                        Colors.red,
                        Colors.orange,
                        Colors.yellow,
                        Colors.green,
                        Colors.blue,
                        Colors.purple,
                        Colors.red,
                      ],
                    )
                  : null,
            ),
            child: isSelected
                ? const Icon(Icons.check_rounded, color: Colors.white, size: 20)
                : showPicker
                ? const Icon(Icons.colorize_rounded, size: 18)
                : null,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              color: isSelected
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
