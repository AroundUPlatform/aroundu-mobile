import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logging/app_logger.dart';
import '../providers/core_providers.dart';

/// Supported locales with their native display names.
class SupportedLocale {
  const SupportedLocale(this.locale, this.nativeName, this.englishName);
  final Locale locale;
  final String nativeName;
  final String englishName;
}

const List<SupportedLocale> kSupportedLocales = [
  SupportedLocale(Locale('en'), 'English', 'English'),
  // Indic
  SupportedLocale(Locale('hi'), 'हिन्दी', 'Hindi'),
  SupportedLocale(Locale('ta'), 'தமிழ்', 'Tamil'),
  SupportedLocale(Locale('te'), 'తెలుగు', 'Telugu'),
  SupportedLocale(Locale('kn'), 'ಕನ್ನಡ', 'Kannada'),
  SupportedLocale(Locale('ml'), 'മലയാളം', 'Malayalam'),
  SupportedLocale(Locale('bn'), 'বাংলা', 'Bengali'),
  SupportedLocale(Locale('gu'), 'ગુજરાતી', 'Gujarati'),
  SupportedLocale(Locale('mr'), 'मराठी', 'Marathi'),
  SupportedLocale(Locale('pa'), 'ਪੰਜਾਬੀ', 'Punjabi'),
  SupportedLocale(Locale('or'), 'ଓଡ଼ିଆ', 'Odia'),
  SupportedLocale(Locale('ur'), 'اردو', 'Urdu'),
  // European
  SupportedLocale(Locale('es'), 'Español', 'Spanish'),
  SupportedLocale(Locale('de'), 'Deutsch', 'German'),
  SupportedLocale(Locale('fr'), 'Français', 'French'),
  SupportedLocale(Locale('pt'), 'Português', 'Portuguese'),
  SupportedLocale(Locale('it'), 'Italiano', 'Italian'),
  SupportedLocale(Locale('nl'), 'Nederlands', 'Dutch'),
  SupportedLocale(Locale('pl'), 'Polski', 'Polish'),
  SupportedLocale(Locale('ru'), 'Русский', 'Russian'),
  // Asian
  SupportedLocale(Locale('ja'), '日本語', 'Japanese'),
  SupportedLocale(Locale('ko'), '한국어', 'Korean'),
  SupportedLocale(Locale('zh'), '简体中文', 'Chinese (Simplified)'),
  SupportedLocale(Locale('zh', 'TW'), '繁體中文', 'Chinese (Traditional)'),
  // Middle Eastern
  SupportedLocale(Locale('ar'), 'العربية', 'Arabic'),
  SupportedLocale(Locale('fa'), 'فارسی', 'Persian'),
  SupportedLocale(Locale('he'), 'עברית', 'Hebrew'),
];

class LocaleController extends Notifier<Locale?> {
  @override
  Locale? build() {
    _restore();
    return null; // null = follow system
  }

  Future<void> setLocale(Locale? locale) async {
    state = locale;
    await _persist(locale);
  }

  Future<void> _restore() async {
    try {
      final storage = ref.read(localStorageProvider);
      final code = await storage.readString('ui.locale.v1');
      if (code != null && code.isNotEmpty) {
        final parts = code.split('_');
        state = parts.length > 1
            ? Locale(parts[0], parts[1])
            : Locale(parts[0]);
      }
    } catch (error, stackTrace) {
      AppLogger.error(
        'Failed restoring locale',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> _persist(Locale? locale) async {
    try {
      final storage = ref.read(localStorageProvider);
      if (locale == null) {
        await storage.saveString('ui.locale.v1', '');
      } else {
        final code = locale.countryCode != null
            ? '${locale.languageCode}_${locale.countryCode}'
            : locale.languageCode;
        await storage.saveString('ui.locale.v1', code);
      }
    } catch (error, stackTrace) {
      AppLogger.error(
        'Failed persisting locale',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }
}

final localeProvider = NotifierProvider<LocaleController, Locale?>(
  LocaleController.new,
);
