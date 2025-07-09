import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sanad/domain/entities/company/company.dart';
import 'package:sanad/domain/entities/company/employee.dart';

import 'user.dart';
part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class AuthEntity with _$AuthEntity {
  @JsonSerializable(explicitToJson: true)
  const factory AuthEntity({
    required User user,
    required String token,
    @Default(false) bool expired,
    @Default([]) List<Company> companies,
    Employee? employee,
  }) = _AuthEntity;

  factory AuthEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthEntityFromJson(json);
}
