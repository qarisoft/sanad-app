import 'dart:convert';

import 'package:sanad/domain/entities/auth/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  static const String authEntity = 'authEntity';
  static const String appLocal = 'appLocal';
  Storage(this.prefs);
  final SharedPreferences prefs;
  // init()async{
  //   prefs = await SharedPreferences.getInstance();
  // }
  //
  AuthEntity? getAuth() {
    final res = prefs.getString(authEntity);
    if (res != null) {
      return null;
    }
    return AuthEntity.fromJson(jsonDecode(res!));
  }

  //
  String? getLocal() {
    return prefs.getString(appLocal);
  }

 Future<bool> setLocal(String v) => prefs.setString(appLocal, v);
}
