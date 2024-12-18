library;

import 'package:flutter/material.dart';

import 'data/data.dart';
import 'domain/service/storage.dart';
export './ui/common/ex.dart';
export 'package:flutter_gen/gen_l10n/sanad_localizations.dart';
export './ui/common/router.dart';
export 'package:sanad/data/data.dart';
export 'package:sanad/ui/widgets/ex.dart';
export 'package:sanad/ui/widgets/dialog_render.dart';
export 'package:sanad/ui/widgets/fetch_dialog.dart';

_appStorage() => di<Storage>();
Storage get appStorage => _appStorage();

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
  static const Color white50 = Color(0xFFFFFFFF);

  static const Color black800 = Color(0xFF121212);
  static const Color black900 = Color(0xFF000000);

  static const Color blue50 = Color(0xFFEEF0F2);
  static const Color blue100 = Color(0xFFD2DBE0);
  static const Color blue200 = Color(0xFFADBBC4);
  static const Color blue300 = Color(0xFF8CA2AE);
  static const Color blue600 = Color(0xFF4A6572);
  static const Color blue700 = Color(0xFF344955);
  static const Color blue800 = Color(0xFF232F34);

  static const Color orange300 = Color(0xFFFBD790);
  static const Color orange400 = Color(0xFFF9BE64);
  static const Color orange500 = Color(0xFFF9AA33);

  static const Color red200 = Color(0xFFCF7779);
  static const Color red400 = Color(0xFFFF4C5D);

  static const Color white50Alpha060 = Color(0x99FFFFFF);

  static const Color blue50Alpha060 = Color(0x99EEF0F2);

  static const Color black900Alpha020 = Color(0x33000000);
  static const Color black900Alpha087 = Color(0xDE000000);
  static const Color black900Alpha060 = Color(0x99000000);

  static const Color greyLabel = Color(0xFFAEAEAE);
  static const Color darkBottomAppBarBackground = Color(0xFF2D2D2D);
  static const Color darkDrawerBackground = Color(0xFF353535);
  static const Color darkCardBackground = Color(0xFF1E1E1E);
  static const Color darkChipBackground = Color(0xFF2A2A2A);
  static const Color lightChipBackground = Color(0xFFE5E5E5);
}
