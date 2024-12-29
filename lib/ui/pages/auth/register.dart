import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sanad/common.dart';
import 'package:sanad/domain/repos/repo.dart';

// import 'package:sanad/ui/pages/auth/auth/auth_provider.dart';

import '../../providers/auth_provider/auth_provider.dart';
import 'components/auth_button.dart';
import 'components/auth_layout.dart';
import 'components/auth_password_field.dart';
import 'components/auth_text_input.dart';

//

class RegisterPage extends HookWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userName = useTextEditingController();
    final name = useTextEditingController();
    final email = useTextEditingController();
    final password = useTextEditingController();
    final passwordConfirmation = useTextEditingController();

    // final hide = useState<bool>(false);
    final isLoading = useState<bool>(false);
    final passwordValidator = useCallback((String? e) {
      if (e == null) {
        return 'empty';
      }
      if (password.text != passwordConfirmation.text) {
        return context.tr.rallyLoginPassword;
      }
      return null;
    }, []);

    final k = GlobalKey<FormState>();

    goBack() {
      Navigator.of(context).maybePop();
    }

    final onRegisterClick_ = useCallback(
      () {
        if (k.currentState!.validate()) {
          return RegisterRequest(
            email: email.text,
            password: password.text,
            device: Platform.isIOS ? 'os' : 'android',
            deviceToken: '',
            username: userName.text,
            passwordConfirmation: passwordConfirmation.text,
          );
        }
      },
      [userName, name, email, password, passwordConfirmation],
    );
    onRegisterClick() {
      final a = onRegisterClick_();
      if (a != null) {
        callActionDialog(
          context,
          registerCallProvider(a),
          yesAction: goBack,
        );
      }
    }

    return Form(
      key: k,
      child: AuthLayout(
        title: context.tr.registerAction,
        child: [
          10.vSpace,
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
              Column(
                children: [
                  Text(context.tr.or),
                  TextButton(
                    onPressed: goBack,
                    child: Text(context.tr.loginAction),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class RegisterPage2 extends StatefulWidget {
//   const RegisterPage2({super.key});

//   @override
//   State<RegisterPage2> createState() => _RegisterPage2State();
// }

// class _RegisterPage2State extends State<RegisterPage2> {
//   final TextEditingController userName = TextEditingController();
//   final TextEditingController name = TextEditingController();
//   final TextEditingController email = TextEditingController();
//   final TextEditingController userPassword = TextEditingController();
//   final TextEditingController userPasswordConfirmation =
//       TextEditingController();
//   late bool hide;
//   final _formKey = GlobalKey<FormState>();
//   final Repository _repo = instance<Repository>();
//   // final AppPreferences _appPref = instance<AppPreferences>();
//   bool loading = false;

//   bool isRtl() {
//     return context.locale == ARABIC_LOCAL;
//   }

//   @override
//   void initState() {
//     hide = false;
//     super.initState();
//   }

//   register() {
//     setState(() => loading = true);
//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (context) {
//         return StateR(
//           sType: StateType.popupLoadingState,
//           message: AppStrings.registerNew.tr(),
//         );
//       },
//     );

//     _repo
//         .register(RegisterRequest(
//       email: email.text,
//       password: userPassword.text,
//       device: App.os,
//       deviceToken: '',
//       username: userName.text,
//       password_confirmation: userPasswordConfirmation.text,
//     ))
//         .then((value) {
//       value.fold((l) {
//         setState(() => loading = false);
//         Navigator.of(context).pop();
//         showDialog(
//             context: context,
//             builder: (context) {
//               return StateR(
//                   sType: StateType.popupErrorState,
//                   title: 'Error',
//                   message: l.msg);
//             });
//       }, (r) {
//         setState(() => loading = false);
//         go();
//       });
//     });
//   }

//   go() {
//     Navigator.pushReplacementNamed(context, Routes.loginRoute);
//   }

//   String? passwordValidator(e) {
//     if (userPassword.text != userPasswordConfirmation.text) {
//       return AppStrings.passwordInvalid.tr();
//     }
//     return null;
//   }

//   @override
//   Widget build(context) {
//     return AuthLayout(
//       title: 'Register',
//       children: [
//         InputContainer(
//           label: AppStrings.name.tr(),
//           hintLabel: AppStrings.name.tr(),
//           controller: name,
//         ),
//         InputContainer(
//           label: AppStrings.username.tr(),
//           hintLabel: AppStrings.username.tr(),
//           controller: userName,
//         ),
//         InputContainer(
//           label: AppStrings.emailHint.tr(),
//           hintLabel: AppStrings.emailHint.tr(),
//           controller: email,
//         ),
//         PassField(
//           controller: userPassword,
//           label: AppStrings.password.tr(),
//           validator: passwordValidator,
//         ),
//         PassField(
//           controller: userPasswordConfirmation,
//           label: AppStrings.passowrdConfirmation.tr(),
//           validator: passwordValidator,
//         ),
//         _getLoginButton(() {
//           if (_formKey.currentState!.validate()) {
//             register();
//           }
//         }),
//         const SizedBox(
//           height: 4,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextButton(
//               onPressed: () =>
//                   {Navigator.of(context).pushNamed(Routes.loginRoute)},
//               style: TextButton.styleFrom(
//                 foregroundColor: AppColor.secondarySoft,
//               ),
//               child: Text(AppStrings.login.tr()),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   // @override
//   Widget b(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColor.primary,
//       body: ListView(
//         shrinkWrap: true,
//         children: [
//           hero(),
//           Container(
//             height: MediaQuery.of(context).size.height * 70 / 100,
//             width: MediaQuery.of(context).size.width,
//             color: Colors.white,
//             padding: const EdgeInsets.only(
//               left: 20,
//               right: 20,
//             ),
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Column(
//                     children: [
//                       title(),
//                       InputContainer(
//                         label: AppStrings.name.tr(),
//                         hintLabel: AppStrings.name.tr(),
//                         controller: name,
//                       ),
//                       InputContainer(
//                         label: AppStrings.username.tr(),
//                         hintLabel: AppStrings.username.tr(),
//                         controller: userName,
//                       ),
//                       InputContainer(
//                         label: AppStrings.emailHint.tr(),
//                         hintLabel: AppStrings.emailHint.tr(),
//                         controller: email,
//                       ),
//                       PassField(
//                         controller: userPassword,
//                         label: AppStrings.password.tr(),
//                         validator: passwordValidator,
//                       ),
//                       PassField(
//                         controller: userPasswordConfirmation,
//                         label: AppStrings.passowrdConfirmation.tr(),
//                         validator: passwordValidator,
//                       ),
//                       _getLoginButton(() {
//                         if (_formKey.currentState!.validate()) {
//                           register();
//                         }
//                       }),
//                       const SizedBox(
//                         height: 4,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           TextButton(
//                             onPressed: () => {
//                               Navigator.of(context).pushNamed(Routes.loginRoute)
//                             },
//                             style: TextButton.styleFrom(
//                               foregroundColor: AppColor.secondarySoft,
//                             ),
//                             child: Text(AppStrings.login.tr()),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget hero() {
//     return Container(
//       height: MediaQuery.of(context).size.height * 30 / 100,
//       width: MediaQuery.of(context).size.width,
//       padding: const EdgeInsets.only(left: 32),
//       decoration: BoxDecoration(
//         gradient: AppColor.primaryGradient,
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const Image(
//             image: AssetImage('assets/images/logo.png'),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             AppStrings.loginPhrase.tr(),
//             style: const TextStyle(color: Colors.white),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget title() {
//     return Center(
//       child: Container(
//         margin: const EdgeInsets.only(bottom: 24),
//         child: Text(
//           AppStrings.registerNew.tr(),
//           style: const TextStyle(
//             fontSize: 18,
//             fontFamily: fontFamily,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _getLoginButton(Function action) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width,
//       child: ElevatedButton(
//         onPressed: () => action(),
//         style: ElevatedButton.styleFrom(
//           padding: const EdgeInsets.symmetric(vertical: 12),
//           backgroundColor: AppColor.primary,
//           elevation: 0,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(8),
//           ),
//         ),
//         child: Text(
//           // !loading ?
//           AppStrings.registerAction.tr(),
//           style: const TextStyle(
//             fontSize: 16,
//             fontFamily: fontFamily,
//             fontWeight: FontWeight.w600,
//             color: AppColor.primaryExtraSoft,
//           ),
//         ),
//       ),
//     );
//   }
// }
