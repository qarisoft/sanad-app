import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sanad/domain/entities/auth/auth.dart';
import 'package:sanad/domain/entities/auth/user.dart';
import 'package:sanad/domain/entities/company/company.dart';
import 'package:sanad/domain/entities/company/employee.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class AuthResponse with _$AuthResponse {
  @JsonSerializable(explicitToJson: true)
  const factory AuthResponse({
    @Default('') String token,
    @Default(User()) User user,
    @Default([]) List<Company> companies,
    @Default(Employee()) Employee employee,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

extension Wr on AuthResponse {
  AuthEntity toDomain() => AuthEntity(
        user: User(
          id: user.id,
          username: user.username,
          email: user.email,
        ),
        token: token,
      );
}
