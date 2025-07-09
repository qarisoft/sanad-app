import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sanad/app/constants.dart';
import 'package:sanad/app/errors/failure.dart';
import 'package:sanad/data/data.dart';
import 'package:sanad/domain/entities/task/task_entity.dart';
import 'package:sanad/ui/providers/ex.dart';
import 'package:sanad/ui/providers/index.dart';
part 'task_provider.g.dart';
part 'task_provider.freezed.dart';

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

@freezed
class HomeTaskState with _$HomeTaskState {
  const factory HomeTaskState.initial() = InitailState;
  // const factory HomeTaskState.empty() = EmptyState;
  const factory HomeTaskState.data({
    required List<TaskEntity> data,
  }) = DataState;
  const factory HomeTaskState.loading() = LoadingState;

  factory HomeTaskState.fromJson(Map<String, dynamic> json) =>
      _$HomeTaskStateFromJson(json);
}

@Riverpod(dependencies: [Message])
class HomeData extends _$HomeData {
  PaginatedData? _pageData;
  @override
  HomeTaskState build() {
    init();
    final data = _pageData?.data;
    if (data != null) {
      return HomeTaskState.data(data: data);
    }
    return HomeTaskState.initial();
  }

  Future<void> init() async {
    // final a =
    ref.keepAlive();
    // Future.delayed(Duration(minutes: 1)).then(
    //   (_) {
    //     a.close();
    //   },
    // );

    await refresh(true);
    return;
  }

  _updateState(List<TaskEntity> tasks) {
    final dataState = state.whenOrNull(data: (d) => d) ?? [];
    state = HomeTaskState.data(data: {...dataState, ...tasks}.toList());
  }

  Future<void> refresh([bool isInitial = false]) async {
    final data = await fetch(isInitial ? null : _pageData?.nextPageUrl);
    // print(data);
    if (data != null) {
      _pageData = data;
      _updateState(data.data);
    }
    return;
  }

  FutureOr<PaginatedData?> fetch([String? path]) async {
    final dio = await ref.getDebouncedDio();
    if (ref.read(interNetProvider).contains(ConnectivityResult.none)) {
      _pageData = null;
      ref.read(messageProvider.notifier).add(NoInternet());
      return null;
    }

    try {
      final res = await dio.get(
        path ?? '$baseUrl/home',
      );
      final r = HomeResponse.fromJson(res.data);
      return r.data;
    } catch (e) {
      // print(e);
      if (e is DioException) {
        if (e.type == DioExceptionType.badResponse) {
          final c = e.response?.statusCode;
          if (c != null && c == HttpStatus.unauthorized) {
            ref.read(messageProvider.notifier).add(UnAuthorized());
          }
        }
      }
    }
    return null;
  }
}
