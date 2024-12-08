import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';
@freezed
class User with _$User{
  @JsonSerializable(explicitToJson: true)
  const factory User({
    required int id,
    @Default('') String name,
    required String username,
    required String email,
    @Default('') String photo,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}