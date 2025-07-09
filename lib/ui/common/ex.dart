import 'package:flutter/material.dart';
import 'package:sanad/l10n/sanad_localizations.dart';

extension A on BuildContext {
  SL get tr => SL.of(this)!;
}
