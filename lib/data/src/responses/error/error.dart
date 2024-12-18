import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';
part 'error.g.dart';

@freezed
class Errors with _$Errors {
  const factory Errors({
    String? message,
    String? error,
    Map<String, List<String>>? errors,
  }) = _Eroors;

  factory Errors.fromJson(Map<String, dynamic> json) => _$ErrorsFromJson(json);
}

extension ErrorsToString on Errors {
  List<String> getMessage() {
    final v=errors?.values;
    if (v != null) {
      return (v).map((e) => e.first).toList();

    }
    
    if (error!=null) {
      return [error!];
    }
    return [];
  }
}
