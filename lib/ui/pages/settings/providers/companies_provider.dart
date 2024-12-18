import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'companies_provider.g.dart';

@riverpod
class Companies extends _$Companies {
  @override
  FutureOr<List<String>> build() async {
    return [];
  }

  Future<void> refresh() async {
    return;
  }
}
