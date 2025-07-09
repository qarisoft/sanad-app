import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sanad/app/constants.dart';
// import 'package:sanad/data/src/index.dart';
import 'package:sanad/data/src/responses/tasks/task_response.dart';
import 'package:sanad/domain/entities/task/task_entity.dart';
import 'package:sanad/ui/providers/ex.dart';
part 'p.freezed.dart';
part 'p.g.dart';

// Future dioCall(DioClass dioclass) async {
//   return await dioclass.dio.get(dioclass.path);
// }

@freezed
class PageData with _$PageData {
  @JsonSerializable(explicitToJson: true)
  const factory PageData({
    String? path,
    int? id,
    @Default({}) Set<TaskEntity> data,
  }) = _PageData;

  factory PageData.fromJson(Map<String, dynamic> json) =>
      _$PageDataFromJson(json);
}

@freezed
class HomeState with _$HomeState {
  @JsonSerializable(explicitToJson: true)
  const factory HomeState({
    @Default(0) int total,
    @Default(0) int version,
    @Default(1) int page,
    @Default(0) int serverTotal,
    @Default(1) int lastPage,
    required DateTime time,
    @Default(false) bool isLoading,
    // @Default({}) Set<PageData> data,
    @Default({}) Set<TaskEntity> tasks,
  }) = _HomeState;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
}

@riverpod
class Home extends _$Home {
  // KeepAliveLink? _k;
  final _url = '$baseUrl/home';
  @override
  HomeState build() {
    // _k = ref.keepAlive();

    // ref.onResume(_onResume);
    _init();
    return HomeState(
      time: DateTime.now(),
      isLoading: true,
    );
  }

  // _onResume() {
  //   if (DateTime.now().difference(state.time).inMinutes > 5) {}
  // }

  void die() {
    return;
    // _k?.close();
  }

  Future<void> load() async {
    await _refresh(state.tasks.length + 10);
  }

  Future<void> refresh() async {
    await _refresh();
  }

  Future<void> _refresh([int n = 20]) async {
    final dio = await ref.getDebouncedDio();
    dio.options = dio.options.copyWith(
      queryParameters: {
        'per_page': n,
      },
    );
    await _getFetch(1, dio);
  }

  Future<void> _init() async {
    try {
      await _getFetch(1);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
      );
    }
  }

  Future<void> _getFetch(int index, [Dio? dio]) async {
    final p = _getPath(index);

    final res = await _fetch(
      p,
      dio ?? ref.dioFactory(),
    );
    final data = res.data;

    if (data == null) return;
    print(
      'data.total ${data.total}\n' 'data.data.length ${data.data.length}',
    );
    final tasks = {...data.data};
    state = HomeState(
      time: DateTime.now(),
      tasks: tasks,
      total: tasks.length,
      serverTotal: data.total,
    );
  }

  Future<HomeResponse> _fetch(String path, Dio dio) async {
    final a = await ref.tryCaller(DioClass(dio: dio, path: path));
    // final a = await compute(dioCall, DioClass(dio: dio, path: path));

    return HomeResponse.fromJson(a.data);
  }

  _getPath(int page) => '$_url?page=$page';
}
