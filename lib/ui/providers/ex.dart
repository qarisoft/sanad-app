import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:sanad/app/constants.dart';
import 'package:sanad/app/errors/failure.dart';
import 'package:sanad/common.dart';
import 'package:sanad/data/error_handeler.dart';
import 'package:sanad/domain/service/storage.dart';
import 'package:sanad/ui/providers/auth_provider/auth_provider.dart';
import 'package:sanad/ui/providers/index.dart';

import 'tasks/local_tasks/local_tasks.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:sanad/ui/providers/app/app.dart';

extension WidgetRefExt on WidgetRef {
  logOut_() async {
    await di<Storage>().logOut();
    invalidate(authProvider);
    invalidate(homeDataProvider);
    invalidate(localTasksProvider);
  }
  // callApi
}

extension DebounceAndCancelExtension on Ref {
  /// Wait for [duration] (defaults to 500ms), and then return a [http.Client]
  /// which can be used to make a request.
  ///
  /// That client will automatically be closed when the provider is disposed.
  logOut() async {
    await di<Storage>().logOut();
    invalidate(authProvider);
    invalidate(homeDataProvider);
    invalidate(localTasksProvider);
  }

  Dio dioFactory() {
    final client = Dio();
    const String applicationJson = "application/json";
    const String contentType = "content-type";
    const String accept = "accept";
    const String a = 'Accept-Language';

    Map<String, String> headers = {
      contentType: applicationJson,
      accept: applicationJson,
      a: 'ar'
    };

    //
    final auth = appStorage.getAuth();
    if (auth != null) {
      headers['Authorization'] = 'Bearer ${auth.token}';
    }
    client.options = client.options.copyWith(
      headers: headers,
      baseUrl: baseUrl
    );
    // client.interceptors.add();
    client.interceptors.add(PrettyDioLogger(
        // requestHeader: true,
        // requestBody: true,

        responseHeader: true,
        error: true,
        responseBody: true));
    return client;
  }

  Future<Dio> getDebouncedDio([Duration? duration]) async {
    // First, we handle debouncing.
    var didDispose = false;
    onDispose(() => didDispose = true);

    // We delay the request by 500ms, to wait for the user to stop refreshing.
    await Future<void>.delayed(duration ?? const Duration(milliseconds: 500));

    // If the provider was disposed during the delay, it means that the user
    // refreshed again. We throw an exception to cancel the request.
    // It is safe to use an exception here, as it will be caught by Riverpod.
    if (didDispose) {
      throw Exception('Cancelled');
    }
    final client=dioFactory();

    // We now create the client and close it when the provider is disposed.

    onDispose(client.close);

    // Finally, we return the client to allow our provider to make the request.
    return client;
  }

  Future<T> tryCall<T>(Future<T> Function() action) async {
    try {
      return await action();
    } catch (e) {
      if (e is DioException) {
        final res = hadelDioException(e);
        if (res != null) {
          throw ServerErrorsWithMsg(res);
        }
      }
    }
    throw ServerError();
  }
}