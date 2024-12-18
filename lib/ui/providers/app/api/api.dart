import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sanad/app/errors/failure.dart';
import 'package:sanad/ui/providers/ex.dart';
part 'api.freezed.dart';
part 'api.g.dart';
@freezed
class CallApiState with _$CallApiState {
  const factory CallApiState.initial() = Initial;
  const factory CallApiState.loading() = Loading;
  const factory CallApiState.data() = Data;
  const factory CallApiState.error({required List<String> errors}) = Fail;
}

@riverpod
class CallApi extends _$CallApi {
  @override
  CallApiState build() {
    return CallApiState.initial();
  }

  FutureOr<T?> callUrl<T>(Future Function(Dio) action) async {
    state = CallApiState.loading();
    try {
      final dio = await ref.getDebouncedDio();
      final res = await action(dio);
      state = CallApiState.initial();
      return res;
    } on ServerErrorsWithMsg catch (e) {
      state = CallApiState.error(errors: [...e.messages]);
      return null;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        state = CallApiState.error(errors: [e.response?.data['errors']]);
      }
    }
    return null;
  }
}
