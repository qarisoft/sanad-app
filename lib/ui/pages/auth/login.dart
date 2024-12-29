// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sanad/common.dart';
import 'package:sanad/domain/repos/repo.dart';
import 'package:sanad/ui/providers/auth_provider/auth_provider.dart';
import 'package:sanad/ui/providers/index.dart';

// import 'package:sanad/ui/providers/index.dart';

// import 'package:sanad/ui/pages/auth/auth/auth_provider.dart';

import 'components/auth_button.dart';
import 'components/auth_layout.dart';
import 'components/auth_password_field.dart';
import 'components/auth_text_input.dart';

//

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  get provider => loginCallProvider;

  @override
  Widget build(BuildContext context) {
    //
    final k = GlobalKey<FormState>();

    const space = SizedBox(height: 10);
    final email = TextEditingController(text: 'a');
    final password = TextEditingController(text: 'password');
    return Form(
      key: k,
      child: AuthLayout(
        title: context.tr.rallyLoginLabelLogin,
        child: [
          space,
          Consumer(
            builder: (context, ref, child) {
              // final internet = ref.watch(interNetProvider);
              return Row(
                children: [
                  // Text('${internet}'),
                ],
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.tr.rallyLoginLabelLogin,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
              // 5.hSpace,
            ],
          ),
          space,
          space,
          space,
          InputContainer(
            label: context.tr.username,
            controller: email,
          ),
          space,
          PassField(
            controller: password,
            label: context.tr.password,
          ),
          space,
          Consumer(
            builder: (context, ref, child) {
              onRegisterClick_() {
                if (k.currentState!.validate()) {
                  String os = 'web';
                  if (!kIsWeb) {
                    os = Platform.operatingSystem;
                  }
                  return LoginRequest(email.text, password.text, os, '');
                }
              }

              onRegisterClick() async {
                final r = onRegisterClick_();
                if (r != null) {
                  callActionDialog(
                    context,
                    provider(r),
                    yesAction: () {
                      Navigator.of(context).pop();
                      ref.invalidate(authProvider);
                      ref.invalidate(homeDataProvider);
                    },
                  );
                }
              }

              final isLoading = false;

              return AuthButton(
                title: context.tr.loginAction,
                action: onRegisterClick,
                isLoading: isLoading,
              );
            },
          ),
          space,
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(context.tr.or),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(Routes.registerRoute);
                    },
                    child: Text(context.tr.registerAction),
                  ),
                ],
              ),
            ],
          ),
        ],

        // child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // children: ),
      ),
    );
  }
}
