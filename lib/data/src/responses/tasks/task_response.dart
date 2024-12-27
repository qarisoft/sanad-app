// import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:sanad/domain/entities/location.dart';
import 'package:sanad/domain/entities/task/task_entity.dart';

// // part 'task.freezed.dart';
// // part 'task.g.dart';
part 'task_response.g.dart';
part 'task_response.freezed.dart';

@freezed
class PaginatedData with _$PaginatedData {
  const factory PaginatedData({
    @JsonKey(name: 'current_page') int? currentPage,
    String? path,
    @Default([]) List<TaskEntity> data,
    @JsonKey(name: "next_page_url") String? nextPageUrl,
    @Default(1) @JsonKey(name: "per_page") int perPage,
    @JsonKey(name: "prev_page_url") String? prevPageUrl,
    @Default(0) int to,
    @Default(0) int total,
  }) = _PaginatedData;

  factory PaginatedData.fromJson(Map<String, dynamic> json) =>
      _$PaginatedDataFromJson(json);
}

@freezed
class HomeResponse with _$HomeResponse {
  const factory HomeResponse({
    @Default(1010) int status,
    @Default('') String message,
    @Default(PaginatedData()) PaginatedData data,
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
