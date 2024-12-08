import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sanad/common.dart';
import 'package:sanad/ui/pages/auth/components/auth_hero.dart';

import 'components/auth_layout.dart';
import 'components/auth_text_input.dart';
import 'components/auth_password_field.dart';
import 'components/auth_button.dart';

//

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userName = useTextEditingController();
    final name = useTextEditingController();
    final email = useTextEditingController();
    final password = useTextEditingController();
    final passwordConfirmation = useTextEditingController();

    final hide = useState<bool>(false);
    final isLoading = useState<bool>(false);
    final passwordValidator = useCallback((String? e) {
      if (e == null) {
        return 'empty';
      }
      if (password.text != passwordConfirmation.text) {
        return context.tr.rallyLoginPassword;
      }
      return null;
    }, [hide]);
    final onRegisterClick = useCallback(
      () {},
      [userName, name, email, password, passwordConfirmation],
    );


    return AuthLayout(
      hero: Authhero(text: context.tr.loginPage,image: AssetImage('assets/images/logo2.png'),),
      title: context.tr.loginPage,
      children: [
        InputContainer(
          label: context.tr.name,
          controller: name,
        ),
        InputContainer(
          label: context.tr.username,
          controller: userName,
        ),
        InputContainer(
          label: context.tr.email,
          controller: email,
        ),
        PassField(
          controller: password,
          label: context.tr.password,
          validator: passwordValidator,
        ),
        PassField(
          controller: passwordConfirmation,
          label: context.tr.passwordConfirmation,
          validator: passwordValidator,
        ),
        AuthButton(
          title: context.tr.registerAction,
          action: onRegisterClick,
          isLoading: isLoading.value,
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () =>
                  {Navigator.of(context).pushNamed(Routes.loginRoute)},
              // style: TextButton.styleFrom(
              //   foregroundColor: AppColor.secondarySoft,
              // ),
              child: Text(context.tr.loginAction),
            ),
          ],
        ),
      ],
    );
  }
}





