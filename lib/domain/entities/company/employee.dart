import 'package:freezed_annotation/freezed_annotation.dart';
part 'employee.freezed.dart';
part 'employee.g.dart';

@freezed
class Employee with _$Employee {
  @JsonSerializable(explicitToJson: true)
  const factory Employee({
    @Default(0) int id,
    @JsonKey(name: 'company_id') @Default(0) int companyId,
    @JsonKey(name: 'user_id') @Default(0) int userId,
    @JsonKey(name: 'is_viewer') @Default(false) bool isViewer,
    @JsonKey(name: 'active') @Default(false) bool isActive,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
}
