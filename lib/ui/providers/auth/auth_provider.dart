import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sanad/domain/entities/auth/auth.dart';
import 'package:sanad/main.dart';
part 'auth_provider.g.dart';
part 'auth_provider.freezed.dart';

@riverpod
class Auth extends _$Auth {

  @override
   AuthState build() {
    // final a=appStorage.getAuth();
    // if (a!=null) {
      // return AuthState.authinticated(auth: a);
    // }
    return AuthState.initial();
  }
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authinticated({required AuthEntity auth}) =
      Authinticated;
  //
  const factory AuthState.initial() =
      AuthInitial;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
