import 'dart:ui' show Locale;

import 'package:aroundu/l10n/app_localizations.dart';
import 'package:aroundu/l10n/app_localizations_en.dart';
import 'package:aroundu/l10n/app_localizations_hi.dart';
import 'package:aroundu/src/core/l10n/l10n_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('currentL10nProvider', () {
    test('initial value is null', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      expect(container.read(currentL10nProvider), isNull);
    });

    test('can be set to English locale', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      final en = AppLocalizationsEn();
      container.read(currentL10nProvider.notifier).state = en;

      final result = container.read(currentL10nProvider);
      expect(result, isNotNull);
      expect(result, isA<AppLocalizationsEn>());
      expect(result!.appName, 'AroundU');
      expect(result.loginTitle, 'Log In');
    });

    test('can be switched between locales', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      container.read(currentL10nProvider.notifier).state = AppLocalizationsEn();
      expect(container.read(currentL10nProvider)?.loginTitle, 'Log In');

      container.read(currentL10nProvider.notifier).state = AppLocalizationsHi();
      expect(container.read(currentL10nProvider)?.loginTitle, 'लॉग इन करें');
    });

    test('supports all declared locales', () {
      expect(
        AppLocalizations.supportedLocales.length,
        equals(27),
        reason: 'Should support 27 locales',
      );
    });

    test('delegate resolves supported locales', () {
      expect(AppLocalizations.delegate.isSupported(const Locale('en')), isTrue);
      expect(AppLocalizations.delegate.isSupported(const Locale('hi')), isTrue);
      expect(
        AppLocalizations.delegate.isSupported(const Locale('zh', 'TW')),
        isTrue,
      );
    });
  });
}
