// import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sanad/common.dart';
import 'package:sanad/domain/repos/repo.dart';
import 'package:sanad/ui/providers/auth_provider/auth_provider.dart';
import 'package:sanad/ui/providers/index.dart';

// import 'package:sanad/ui/pages/auth/auth/auth_provider.dart';

import 'components/auth_button.dart';
import 'components/auth_layout.dart';
import 'components/auth_password_field.dart';
import 'components/auth_text_input.dart';

//

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  get provider => loginCallProvider;

  @override
  Widget build(BuildContext context, ref) {
    final email = useTextEditingController(text: 'a');
    final password = useTextEditingController(text: 'password');

    final isLoading = useState<bool>(false);
    final k = GlobalKey<FormState>();

    final onRegisterClick_ = useCallback(
      () {
        if (k.currentState!.validate()) {
          String os = 'web';
          if (!kIsWeb) {
            os = Platform.operatingSystem;
          }
          return LoginRequest(email.text, password.text, os, '');
        }
      },
      [email, k, password],
    );
    onRegisterClick() async {
      final r = onRegisterClick_();
      if (r != null) {
        // await (Connectivity().checkConnectivity());
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

    const space = SizedBox(height: 10);
    return Form(
      key: k,
      child: AuthLayout(
        title: context.tr.rallyLoginLabelLogin,
        children: [
          Container(
            // color: Colors.red,
            constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height * 0.7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                space,
                Consumer(
                  builder: (context, ref, child) {
                    final internet = ref.watch(interNetProvider);
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
                    Text(context.tr.rallyLoginLabelLogin,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontWeight: FontWeight.w500)),
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
                AuthButton(
                  title: context.tr.loginAction,
                  action: onRegisterClick,
                  isLoading: isLoading.value,
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
                            Navigator.of(context)
                                .pushNamed(Routes.registerRoute);
                          },
                          child: Text(context.tr.registerAction),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
