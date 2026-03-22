import 'package:flutter/widgets.dart';

import '../../../l10n/app_localizations.dart';

/// Shorthand extension so every widget can write `context.l10n.someKey`
/// instead of `AppLocalizations.of(context)!.someKey`.
extension L10nExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
