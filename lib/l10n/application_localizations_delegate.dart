import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'messages_all.dart';
part 'localization.dart';

class ApplicationLocalizationsDelegate extends LocalizationsDelegate<ApplicationLocalizations> {

  const ApplicationLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'de'].contains(locale.languageCode);
  }

  @override
  Future<ApplicationLocalizations> load(Locale locale) {
    return ApplicationLocalizations.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<ApplicationLocalizations> old) {
    return false;
  }
}