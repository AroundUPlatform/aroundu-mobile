import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../l10n/app_localizations.dart';

/// Holds the current [AppLocalizations] instance, updated from the widget tree
/// whenever the locale changes.
final currentL10nProvider = StateProvider<AppLocalizations?>((ref) => null);
