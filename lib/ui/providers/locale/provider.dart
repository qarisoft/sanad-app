import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sanad/main.dart';
part 'provider.g.dart';

const arabic = 'ar';
const english = 'en';

@riverpod
class Local extends _$Local {
  @override
  String build() {
    return arabic;
    // return appStorage.getLocal() ?? arabic;
  }

  setLocal(String local)async{
    state = local;
  //  await appStorage.setLocal(local);

  }

  toggole() {
    switch (state) {
      case arabic:
        setLocal(english);
      case english:
        setLocal(arabic);
    }
  }
}
