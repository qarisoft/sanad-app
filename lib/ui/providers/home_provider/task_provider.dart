import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sanad/app/constants.dart';
import 'package:sanad/app/errors/failure.dart';
import 'package:sanad/data/data.dart';
// import 'package:sanad/data/src/index.dart';
import 'package:sanad/domain/entities/task/task_entity.dart';
import 'package:sanad/ui/providers/auth_provider/auth_provider.dart';
import 'package:sanad/ui/providers/ex.dart';
import 'package:sanad/ui/providers/index.dart';

part 'task_provider.g.dart';

@Riverpod(dependencies: [])
class Message extends _$Message {
  @override
  Failure? build() {
    return null;
  }

  add(Failure f) {
    state = f;
  }
}

@Riverpod(dependencies: [Message])
class HomeData extends _$HomeData {
  @override
  FutureOr<List<TaskEntity>> build() async {
    return ref.watch(authProvider).when(
          authenticated: (auth) async => await _init(),
          initial: () => [],
        );
  }

  FutureOr<List<TaskEntity>> _init() async {
    final a = ref.keepAlive();
    Future.delayed(Duration(minutes: 1)).then(
      (_) {
        a.close();
      },
    );

    return await fetch();
  }

  Future<void> refresh() async {
    // final inter
    final data = await fetch();
    state = AsyncValue.data(data);
    return;
  }

  FutureOr<List<TaskEntity>> fetch() async {
    final dio = await ref.getDebouncedDio();
    if (ref.read(interNetProvider).contains(ConnectivityResult.none)) {
      ref.read(messageProvider.notifier).add(NoInternet());
      return[];
    }

    try {
      final res = await dio.get(
        '$baseUrl/home',
      );

      final r = HomeResponse.fromJson(res.data);
      if (r.data.isNotEmpty) {
        return r.data;
      }
    } catch (e) {
      if (e is DioException) {
        if (e.type == DioExceptionType.badResponse) {
          final c = e.response?.statusCode;
          if (c != null && c == HttpStatus.unauthorized) {
            ref.read(messageProvider.notifier).add(UnAuthorized());
          }
        }
      }
    }
    return [];
  }
}


