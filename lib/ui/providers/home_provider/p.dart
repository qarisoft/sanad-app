import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sanad/app/constants.dart';
import 'package:sanad/data/src/index.dart';
import 'package:sanad/data/src/responses/tasks/task_response.dart';
import 'package:sanad/domain/entities/task/task_entity.dart';
import 'package:sanad/ui/providers/ex.dart';
part 'p.freezed.dart';
part 'p.g.dart';

class DioClass {
  final Dio dio;
  final String path;

  DioClass({required this.dio, required this.path});
}

Future<HomeResponse> dioCall(DioClass dioclass) async {
  final res = await dioclass.dio.get(dioclass.path);
  return HomeResponse.fromJson(res.data);
}

@freezed
class PageData with _$PageData {
  @JsonSerializable(explicitToJson: true)
  const factory PageData({
    required String path,
    required int id,
    @Default([]) List<TaskEntity> data,
  }) = _PageData;

  factory PageData.fromJson(Map<String, dynamic> json) =>
      _$PageDataFromJson(json);
}

@freezed
class HomeState with _$HomeState {
  @JsonSerializable(explicitToJson: true)
  const factory HomeState({
    @Default(0) int total,
    @Default(true) bool isLoading,
    @Default([]) List<PageData> data,
  }) = _HomeState;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
}

@riverpod
class Home extends _$Home {
  final _url = '$baseUrl/home';
  @override
  HomeState build() {
    ref.onDispose(
      () {},
    );
    ref.onResume(
      () {},
    );
    _getFetch(1);
    final a = _load();
    if (a != null) {
      return HomeState.fromJson(a);
    }
    return HomeState();
  }

  Future<void> refresh() async {
    await _getFetch(1);
  }

  _getFetch(int index) async {
    final p = _getPath(index);
    final res = await _fetch(p);
    final pageData = PageData(path: p, id: index, data: res.data.data);

    _update(pageData, res.data.total);
  }

  _update(PageData pageData, int total, [bool isLoading = false]) {
    state = state.copyWith(
      data: {...state.data, pageData}.toList(),
      total: total,
      isLoading: isLoading,
    );
    _save();
  }

  _load() => appStorage().getData('homeCache');
  _save() => appStorage().setData('homeCache', state.toJson());

  Future<HomeResponse> _fetch(String path) async {
    final dio = ref.dioFactory();
    final a = await compute(dioCall, DioClass(dio: dio, path: path));
    return a;
  }

  _getPath(int page) => '$_url?page=$page';
}
