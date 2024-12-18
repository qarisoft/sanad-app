import 'dart:convert';

import 'package:sanad/domain/entities/auth/auth.dart';
import 'package:sanad/domain/entities/task/task_entity.dart';
import 'package:sanad/domain/service/storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageImpl implements Storage {
  static const String authEntityKey = 'authEntity3';
  static const String appLocalKey = 'appLocal';
  static const String localTasksKey = 'localTasksKey4';

  StorageImpl(this.prefs);

  final SharedPreferences prefs;

  


  @override
  AuthEntity? getAuth() {
    final res = prefs.getString(authEntityKey);
    if (res == null) {
      return null;
    }
    return AuthEntity.fromJson(jsonDecode(res));
  }

  @override
  Future<bool> setAuth(AuthEntity auth) async {
    final String value = jsonEncode(auth.toJson());
    // print(value);
    return await prefs.setString(authEntityKey, value);
  }

  //
  @override
  String? getLocal() {
    return prefs.getString(appLocalKey);
  }

  @override
  Future<bool> setLocal(String v) => prefs.setString(appLocalKey, v);

  @override
  Future<bool> logOut() async {
    await prefs.remove(authEntityKey);
    await prefs.remove(localTasksKey);
    return true;
  }

  @override
  Future<bool> setLocalTasks(LocalTasksList tasks) async {
    return await prefs.setString(localTasksKey, jsonEncode(tasks.toJson()));
  }

  @override
  LocalTasksList getLocalTasks() {
    final res = prefs.getString(localTasksKey);
    if (res != null) {
      return LocalTasksList.fromString(res);
    }
    return LocalTasksList(tasks: []);
  }
  
  @override
  getData(String k) {
    final res = prefs.getString(k);
    if (res!=null) {
      return jsonDecode(res);
    }
  }
  
  @override
  Future<bool> setData(String k, data) async{
    return await prefs.setString(k, jsonEncode(data));
    
  }
}
