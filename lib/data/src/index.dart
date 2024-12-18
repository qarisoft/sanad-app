import 'package:get_it/get_it.dart';
import 'package:sanad/domain/service/storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './storage/storage_service.dart' show StorageImpl;


final di = GetIt.instance;

Future<void> registerSingletons() async {
  final sh = await SharedPreferences.getInstance();
  di.registerSingleton<Storage>(
    StorageImpl(sh),
  );
}

Storage appStorage() => di<Storage>();
