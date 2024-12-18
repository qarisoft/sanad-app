import 'package:freezed_annotation/freezed_annotation.dart';
part 'app.g.dart';
part 'app.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required String local,
  }) = _AppState;
  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}

class App {
  App(this.state);
  final AppState state;

  // Sharedpre
}
