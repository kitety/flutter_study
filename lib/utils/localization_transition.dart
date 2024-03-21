import 'package:flutter/widgets.dart';

import '../l10n/application_localizations_delegate.dart';

// Localizations Transition
class LT {
  static BuildContext? _context;

  static set context(BuildContext value) {
    _context = value;
  }

  static ApplicationLocalizations? get t =>
      ApplicationLocalizations.of(_context!);
}
