import 'dart:io';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sanad/common.dart';
import 'package:sanad/domain/entities/auth/auth.dart';
import 'package:sanad/ui/pages/components.dart';
import 'package:sanad/ui/providers/auth_provider/auth_provider.dart';
import 'package:sanad/ui/providers/ex.dart';
// import 'package:flutter/widgets.dart';

class _DeleteDialog extends HookWidget {
  const _DeleteDialog(
      {required this.action, required this.isLoading, this.errorText});
  final bool isLoading;
  final String? errorText;
  final Function(String p) action;

  @override
  Widget build(BuildContext context) {
    final deleteClick = useState(false);
    final passwordController = useTextEditingController();
    final k = GlobalKey<FormState>();

    return Form(
      key: k,
      child: Badge(
        offset: Offset(-20, 0),
        backgroundColor: Colors.transparent,
        alignment: AlignmentDirectional.center,
        label: isLoading
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircularProgressIndicator(),
              )
            : null,
        child: AlertDialog(
          title: Text(context.tr.deleteAccount),
          icon: Icon(
            Icons.warning_rounded,
            color: Theme.of(context).colorScheme.error,
          ),
          actionsAlignment: MainAxisAlignment.start,
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(context.tr.deleteAccountMessage),
              Text(context.tr.deleteAccountMessage2),
              if (deleteClick.value)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      10.vSpace,
                      Text(context.tr.demoTextFieldRetypePassword),
                      5.vSpace,
                      HookBuilder(builder: (context) {
                        final hidePassword = useState<bool>(true);
                        return TextFormField(
                          decoration: InputDecoration(
                              label: Text(context.tr.password),
                              suffixIcon: InkWell(
                                overlayColor:
                                    WidgetStatePropertyAll(Colors.transparent),
                                onTap: () {
                                  hidePassword.value = !hidePassword.value;
                                },
                                child: Icon(
                                  Icons.remove_red_eye,
                                  color: hidePassword.value
                                      ? Colors.grey.shade400
                                      : Colors.grey.shade700,
                                ),
                              ),
                              errorText: errorText),
                          controller: passwordController,
                          obscureText: hidePassword.value,
                          validator: (value) {
                            if (value == null || value == '' || value.isEmpty) {
                              return context.tr.demoTextFieldEnterPassword;
                            }
                            return null;
                          },
                        );
                      }),
                    ],
                  ),
                )
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (k.currentState!.validate()) {
                  if (!deleteClick.value) {
                    deleteClick.value = true;
                    return;
                  }
                  action(passwordController.text);
                }
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    context.tr.delete,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.error,
                        ),
                  ),
                  5.hSpace,
                ],
              ),
            ),
            10.hSpace,
            TextButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              child: Text(
                context.tr.dialogCancel,
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class UserDetailsPage extends ConsumerWidget {
  const UserDetailsPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final auth = ref.watch(authProvider);
    deleteAccount([bool del = true]) {
      showDialog(
        context: context,
        builder: (dContext) {
          return Consumer(
            builder: (context, ref, child) {
              final obj = ref.watch(deletAccountProvider);

              goToSplash() {
                Navigator.of(context).pushReplacementNamed(Routes.splashRoute);
              }

              onSuccess() {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              }

              return _DeleteDialog(
                action: (p) {
                  ref
                      .read(deletAccountProvider.notifier)
                      .checkPassword(
                        p,
                      )
                      .then(
                    (a) {
                      if (a) {
                        onSuccess();
                        ref.logOut_();
                        goToSplash();
                      }
                    },
                  );
                },
                isLoading: obj.whenOrNull(loading: () => true) ?? false,
                errorText: obj.whenOrNull(
                  error: () => context.tr.demoTextFieldPasswordsDoNotMatch,
                ),
              );
            },
          );
        },
      );
    }

    return auth.when(
      authenticated: (auth_) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          actions: [
            PopupMenuButton(
              padding: EdgeInsets.all(0),
              iconColor: Colors.grey.shade700,
              onSelected: (item) {
                deleteAccount();
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                PopupMenuItem(
                  value: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(context.tr.deleteAccount),
                      Icon(
                        Icons.power_settings_new_sharp,
                        color: Theme.of(context).colorScheme.error,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 8.0, right: 8, left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _UserAvatar(auth_),
              10.vSpace,
              HLine(),
              20.vSpace,
              _UserDetailsTable(auth_),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (c, index) => ListTile(
                    title: Text(auth_.companies[index].name),
                    trailing: IconButton(
                        onPressed: () => deleteAccount(false),
                        icon: Icon(
                          Icons.delete_forever,
                          color: Theme.of(context).colorScheme.error,
                        )),
                  ),
                  separatorBuilder: (con, i) => HLine(),
                  itemCount: auth_.companies.length,
                ),
              )
            ],
          ),
        ),
      ),
      initial: () => const Scaffold(),
    );
    // return ;
  }
}

class _UserAvatar extends ConsumerWidget {
  const _UserAvatar(this.auth);
  final AuthEntity auth;

  _getImg() {
    final photo = auth.user.photo;
    final img = File(photo);
    if (img.existsSync()) {
      return Image.file(img).image;
    }
    return null;
  }

  @override
  Widget build(BuildContext context, ref) {
    final picker = ImagePicker();
    Directory? path0;
    Future<Directory> mainDir() async {
      return path0 ??= await getApplicationDocumentsDirectory();
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () async {
          final res = await picker.pickImage(source: ImageSource.gallery);
          if (res != null) {
            final mmainDir = (await mainDir()).path;
            final path = "$mmainDir/images";
            final Directory taskDir = Directory(path);
            if (!(await taskDir.exists())) {
              await taskDir.create(recursive: true);
            }
            final mediaPath = "$path/${res.name}";
            await res.saveTo(mediaPath);
            await ref.read(authProvider.notifier).updateUser(photo: mediaPath);
          }
        },
        customBorder: CircleBorder(),
        child: Badge(
          backgroundColor: Colors.transparent,
          alignment: AlignmentDirectional.bottomCenter,
          offset: Offset(-7, -15),
          label: Container(
            color: Colors.grey.shade300,
            child: Icon(
              Icons.edit_note,
              // fill: 10,

              // color: Colors.blue,
            ),
          ),
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            maxRadius: 70,
            backgroundImage: _getImg(),
          ),
        ),
      ),
    );
  }
}

class _UserDetailsTable extends StatelessWidget {
  const _UserDetailsTable(this.auth);
  final AuthEntity auth;
  @override
  Widget build(BuildContext context) {
    final user = auth.user;
    getName() {
      final n = user.name;
      if (n != null && n != '') {
        return n;
      }
      return '---';
    }

    editInfo() {
      showDialog(
        context: context,
        builder: (dContext) {
          return Consumer(builder: (context, ref, c) {
            final nameController = TextEditingController(text: user.name);
            final k = GlobalKey<FormState>();
            close() {
              Navigator.of(context).pop();
            }

            return Form(
              key: k,
              child: AlertDialog(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(context.tr.edit),
                  ],
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(label: Text(context.tr.name)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return context.tr.demoTextFieldNameRequired;
                        }
                        return null;
                      },
                    )
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () async {
                      if (k.currentState!.validate()) {
                        await ref.read(authProvider.notifier).updateUser(
                              name: nameController.text,
                            );
                        close();
                      }
                    },
                    child: Text(context.tr.dialogFullscreenSave),
                  )
                ],
                actionsAlignment: MainAxisAlignment.start,
              ),
            );
          });
        },
      );
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                context.tr.userdetailsInfoTitle,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.grey.shade600),
              ),
              10.hSpace,
              InkWell(
                onTap: editInfo,
                child: Text(
                  context.tr.userdetailsEditLabelText,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Colors.blue.shade200,
                      ),
                ),
              )
            ],
          ),
          4.vSpace,
          Table(
            children: [
              TableRow(children: [
                _Cel(Text(context.tr.name)),
                _Cel(Text(context.tr.username)),
                _Cel(Center(child: Text(context.tr.email))),
              ]),
              TableRow(children: [
                _Cel(
                  InkWell(
                    child: Text(
                      getName(),
                    ),
                  ),
                ),
                _Cel(Text(user.username)),
                _Cel(Center(child: Text(user.email))),
              ]),
            ],
          ),
          20.vSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    context.tr.userdetailsCompanyLabel,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.grey.shade600),
                  ),
                  10.hSpace,
                ],
              ),
              10.vSpace,
            ],
          )
        ],
      ),
    );
  }
}

class _TitleSection extends StatelessWidget {
  const _TitleSection({required this.children, required this.title});
  final List<Widget> children;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
            // bottom: BorderSide(
            //   width: 1,
            //   color: Colors.grey.shade300,
            // ),
            ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(
              title,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          ...children
        ],
      ),
    );
  }
}

class _Cel extends StatelessWidget {
  const _Cel(this.child);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: child,
    );
  }
}
