import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/l10n/l10n_extension.dart';
import '../../../core/view_model/locale_view_model.dart';

class LanguagePickerScreen extends ConsumerWidget {
  const LanguagePickerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocale = ref.watch(localeProvider);
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.language)),
      body: ListView.builder(
        itemCount: kSupportedLocales.length + 1, // +1 for "System default"
        itemBuilder: (context, index) {
          if (index == 0) {
            final selected = currentLocale == null;
            return _LanguageTile(
              nativeName: context.l10n.systemDefault,
              englishName: '',
              selected: selected,
              onTap: () => ref.read(localeProvider.notifier).setLocale(null),
              colorScheme: cs,
            );
          }
          final sl = kSupportedLocales[index - 1];
          final selected =
              currentLocale != null &&
              currentLocale.languageCode == sl.locale.languageCode &&
              currentLocale.countryCode == sl.locale.countryCode;
          return _LanguageTile(
            nativeName: sl.nativeName,
            englishName: sl.englishName,
            selected: selected,
            onTap: () => ref.read(localeProvider.notifier).setLocale(sl.locale),
            colorScheme: cs,
          );
        },
      ),
    );
  }
}

class _LanguageTile extends StatelessWidget {
  const _LanguageTile({
    required this.nativeName,
    required this.englishName,
    required this.selected,
    required this.onTap,
    required this.colorScheme,
  });

  final String nativeName;
  final String englishName;
  final bool selected;
  final VoidCallback onTap;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        nativeName,
        style: TextStyle(
          fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
        ),
      ),
      subtitle: englishName.isNotEmpty ? Text(englishName) : null,
      trailing: selected
          ? Icon(Icons.check_circle, color: colorScheme.primary)
          : null,
      onTap: onTap,
    );
  }
}
