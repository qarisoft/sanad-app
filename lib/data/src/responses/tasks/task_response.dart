// import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:sanad/domain/entities/location.dart';
import 'package:sanad/domain/entities/task/task_entity.dart';

// // part 'task.freezed.dart';
// // part 'task.g.dart';
part 'task_response.g.dart';
part 'task_response.freezed.dart';

@freezed
class HomeResponse with _$HomeResponse {
  const factory HomeResponse({
    @Default(1010) int status,
    @Default('') String message,
    @Default([]) List<TaskEntity> data,
  }) = _HomeResponse;

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
}

// extension HomeResponseConverter on TaskResponse {
//   TaskEntity toDomain() => TaskEntity(
//         id: id ?? 0,
//         customer: customer ?? '',
//         code: code ?? '',
//         location: location ?? LocationEntity(),
//       );
// }
