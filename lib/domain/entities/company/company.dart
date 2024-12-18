import 'package:freezed_annotation/freezed_annotation.dart';
part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
  @JsonSerializable(explicitToJson: true)
  const factory Company({
    @Default('') String name,
    @Default(0) int id,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}
