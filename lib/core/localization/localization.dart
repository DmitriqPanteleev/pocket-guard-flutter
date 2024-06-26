import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class L {
  const L._();
  static const en = Locale('en');
  static const ru = Locale('ru');

  static const supportedLocales = [en, ru];

  static LocalizationsDelegate<AppLocalizations> get delegate =>
      AppLocalizations.delegate;

  static AppLocalizations of(final BuildContext context) =>
      AppLocalizations.of(context)!;

  static bool isEn(final Locale locale) => locale == en;
}
