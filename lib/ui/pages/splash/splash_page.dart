// import 'package:dartz/dartz.dart' as ConnectivityResult ;
import 'package:connectivity_plus/connectivity_plus.dart'
    show ConnectivityResult;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:sanad/common.dart';
import 'package:sanad/ui/providers/app/app.dart' show interNetProvider;
// import 'package:sanad/domain/entities/auth/user.dart';
import 'package:sanad/ui/providers/auth_provider/auth_provider.dart';
import 'package:sanad/ui/pages/auth/login.dart';
import 'package:sanad/ui/pages/home/main_page.dart';
// import 'package:sanad/ui/pages/auth/auth/auth_provider.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.listen(authProvider, (a, b) {
    //   print(b.toString());
    // });
    final s = ref.watch(authProvider);
    final internet = ref.watch(interNetProvider);
    if (s is AuthInitial) {
      return LoginPage();
    }
    // print(internet);
    if (s is Authinticated) {
      // if (s.auth.expired) {
      //   // showDialog(
      //   //   context: context,
      //   //   builder: (context) {
      //   //     return StateR(sType: StateType.popupErrorState);
      //   //   },
      //   // );
      // }
      if (!s.auth.expired &&
          internet.isNotEmpty &&
          !internet.contains(ConnectivityResult.none)) {
        ref.read(authProvider.notifier).ping();
      }
    }
    return MainPage();
  }
}
