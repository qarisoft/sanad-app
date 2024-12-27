// // import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:sanad/data/service/storage/storage_service.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// part 'app.g.dart';
// @riverpod
// FutureOr<SharedPreferences> sharedPrefs (Ref ref) async{
//   final p = await SharedPreferences.getInstance();
//   ref.keepAlive();
//   return p;
// }

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:sanad/main.dart';
part 'app.g.dart';

@riverpod
class InterNet extends _$InterNet {
  final Connectivity _connectivity = Connectivity();
  @override
  List<ConnectivityResult> build() {
    ref.keepAlive();
    init();
    return [];
  }

  init() async {
    _connectivity.onConnectivityChanged.asBroadcastStream().listen(_update);

    try {
      final a = await _connectivity.checkConnectivity();
      _update(a);
    } on PlatformException {}
  }

  _update(result) {
    if (result is List<ConnectivityResult>) {
      state = result;
    } else {
      state = [];
    }
  }
}
