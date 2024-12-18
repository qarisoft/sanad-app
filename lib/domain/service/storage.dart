import 'package:sanad/domain/entities/auth/auth.dart';
import 'package:sanad/domain/entities/task/task_entity.dart';

abstract class Storage {
  Future<bool> setAuth(AuthEntity auth);

  AuthEntity? getAuth();

  Future<bool> setLocal(String l);

  String? getLocal();

  Future<bool> logOut();

  Future<bool> setLocalTasks(LocalTasksList tasks);

  LocalTasksList getLocalTasks();
  dynamic getData(String v);
  Future<bool> setData(String k,dynamic data);
}
