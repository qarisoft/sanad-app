import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:sanad/domain/entities/auth/user.dart';
import 'package:sanad/ui/providers/auth_provider/auth_provider.dart';
import 'package:sanad/ui/pages/auth/login.dart';
import 'package:sanad/ui/pages/home/main_page.dart';
// import 'package:sanad/ui/pages/auth/auth/auth_provider.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = ref.watch(authProvider);
    if (s is AuthInitial) {
      return LoginPage();
    }
    return MainPage();
  }
}
