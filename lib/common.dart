library;

import 'package:flutter/material.dart';
export './ui/common/ex.dart';
export 'ui/common/theme/theme.dart';
// export './ui/theme/theme.dart';
export 'package:flutter_gen/gen_l10n/sanad_localizations.dart';
export './ui/common/router.dart';

class AppColor {
  static LinearGradient primaryGradient = const LinearGradient(
    colors: [primary, Color(0xFF0F50C6)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const Color primary = Color.fromRGBO(38, 110, 241, 1);
  static const Color primarySoft = Color(0xFF548DF3);
  static const Color primaryExtraSoft = Color(0xFFEFF3FC);
  static const Color secondary = Colors.black54;
  static const Color secondarySoft = Color(0xFF9D9D9D);
  static const Color secondarySoft0 = Color(0xFF4F4F4F);
  static const Color secondaryExtraSoft = Color(0xFFE9E9E9);
  static const Color error = Color(0xFFD00E0E);
  static const Color success = Color(0xFF16AE26);
  static const Color warning = Color(0xFFEB8600);
  static const Color errorColor = Colors.redAccent;
}
