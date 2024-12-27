import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sanad/app/constants.dart';
import 'package:sanad/app/errors/failure.dart';
import 'package:sanad/common.dart';
import 'package:sanad/domain/entities/auth/auth.dart';
import 'package:sanad/domain/repos/repo.dart';
import 'package:sanad/domain/service/storage.dart';
import 'package:sanad/ui/providers/home_provider/p.dart';
// import 'package:sanad/ui/providers/index.dart';
import '../ex.dart';

part 'auth_provider.freezed.dart';
part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  AuthState build() {
    final a = di<Storage>().getAuth();

    if (a != null) {
      return Authinticated(auth: a);
    }

    return AuthState.initial();
  }

  Future<void> updateUser({String? name, String? photo}) async {
    final auth = state.whenOrNull(authenticated: (a) => a);

    if (auth != null) {
      await appStorage.setAuth(
        auth.copyWith(
          user: auth.user.copyWith(
            photo: photo ?? auth.user.photo,
            name: name ?? auth.user.name,
          ),
        ),
      );
      ref.invalidateSelf();
    }
    return;
  }

  //
}

@freezed
class DeleteAccountState with _$DeleteAccountState {
  const factory DeleteAccountState.initial() = DeleteAccountStateInital;
  const factory DeleteAccountState.error() = DeleteAccountStateError;
  const factory DeleteAccountState.loading() = DeleteAccountStateLoading;
  const factory DeleteAccountState.success() = DeleteAccountStateSuccess;
}

@riverpod
class DeletAccount extends _$DeletAccount {
  @override
  DeleteAccountState build() {
    return DeleteAccountState.initial();
  }

  Future<bool> checkPassword(String pass) async {
    state = DeleteAccountState.loading();
    final dio = await ref.getDebouncedDio();
    try {
      final res = await dio.post(
        '$baseUrl/viewer/auth/delete',
        data: {
          'password': pass,
        },
      );
      final status = res.data['status'];
      if (status != null && status == 1) {
        state = DeleteAccountState.success();
        return true;
      } else {
        state = DeleteAccountState.error();
      }
    } catch (e) {
      state = DeleteAccountState.error();
    }
    return false;
  }
}

class DioClassWithData extends DioClass {
  final String email;
  final String password;

  DioClassWithData({
    required super.dio,
    required super.path,
    required this.email,
    required this.password,
  });
}

_cal(DioClassWithData params) {
  return params.dio.post(
    '$baseUrl/login',
    data: {
      'email': params.email,
      'password': params.password,
    },
  );
}

@riverpod
Future<bool> loginCall(Ref ref, LoginRequest params) async {
  final dio = await ref.getDebouncedDio();

  final res = await ref.tryCall(
    () => compute(
      _cal,
      DioClassWithData(
        dio: dio,
        path: '$baseUrl/login',
        email: params.email,
        password: params.password,
      ),
    ),
  );

  final a = AuthResponse.fromJson(res.data);

  if (a.user.id != 0 && a.user.email != '' && a.user.username != '') {
    final auth = AuthEntity(
        user: a.user,
        token: a.token,
        employee: a.employee,
        companies: a.companies);
    await appStorage.setAuth(auth);
    return true;
  }

  throw ServerErrorsWithMsg(['user not found']);
}

@riverpod
Future<bool> registerCall(Ref ref, RegisterRequest params) async {
  final dio = await ref.getDebouncedDio();
  final res = await ref.tryCall(
    () => dio.post(
      '$baseUrl/register',
      data: {
        'email': params.email,
        'username': params.username,
        'name': params.name,
        'password': params.password,
        'password_confirmation': params.passwordConfirmation,
      },
    ),
  );

  final status = res.data['status'];
  if (status != null && status == 1) {
    return true;
  }
  return false;
}

@freezed
class AuthState with _$AuthState {
  //
  @JsonSerializable(explicitToJson: true)
  const factory AuthState.authenticated({
    required AuthEntity auth,
  }) = Authinticated;
  //
  const factory AuthState.initial() = AuthInitial;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
