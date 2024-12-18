import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sanad/common.dart';
import 'package:sanad/domain/entities/auth/auth.dart';
import 'package:sanad/domain/entities/auth/user.dart';
import 'package:sanad/ui/providers/ex.dart';
import 'package:sanad/ui/widgets/delete_dialog.dart';
import '../providers/auth_provider/auth_provider.dart';

class HLine extends StatelessWidget {
  const HLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey.shade300,
      height: 1,
    );
  }
}

class WithRefresh<T> extends StatelessWidget {
  const WithRefresh({
    super.key,
    required this.onData,
    required this.provider,
    required this.refresh,
  });

  final AsyncValue<T> provider;
  final Function() refresh;
  final Widget Function(T data) onData;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await refresh();
      },
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: provider.when(
              data: (d) => onData(d),
              error: (error, stackTrace) {
                return Column();
              },
              loading: () {
                return Container(
                  constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height * 0.9),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      StateR(
                        sType: StateType.fullScreenLoadingState,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerPage extends ConsumerWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authProvider);
    return auth.when(
      authenticated: (auth) {
        print(auth);
        return Column(
          children: [
            _DarwerHead(auth.user),
            HLine(),
            _DrawerBody(auth),
          ],
        );
      },
      initial: () => SizedBox(),
    );
  }
}



class _DrawerBody extends ConsumerWidget {
  const _DrawerBody(this.auth);
  final AuthEntity auth;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logOut() {
      showDialog(
        context: context,
        builder: (dContext) {
          // title: Text(context.tr.drawerLogoutTitle),
          return DeleteDialog(
            onPressed: () {
            Navigator.of(dContext).maybePop();
            ref.logOut_();
          },
            textBody: context.tr.drawerLogoutTitle,
            title: Text(context.tr.drawerLogoutTitle),
            withIcon: true,
          );
        },
      );
    }

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.tr.companies,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(color: Colors.grey.shade500),
                  ),
                  ...auth.companies.map((c) {
                    return ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: Icon(
                        Icons.circle,
                        size: 10,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      title: Text(c.name),
                    );
                  })
                ],
              ),
            ),
            ListTile(
              onTap: logOut,
              leading: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Icon(
                  Icons.logout_rounded,
                ),
              ),
              titleAlignment: ListTileTitleAlignment.bottom,
            )
          ],
        ),
      ),
    );
  }
}

class _DarwerHead extends ConsumerWidget {
  const _DarwerHead(this.user);

  final User user;

  _getImg() {
    final photo = user.photo;
    final img = File(photo);
    if (img.existsSync()) {
      return Image.file(img).image;
    }
    return null;
  }

  _getFirstC() {
    final uname = user.name;
    if (uname != null && uname.characters.isNotEmpty) {
      return uname.characters.first;
    }
    return '.';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = user.name ?? '--';
    final userAvatarImg = _getImg();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      customBorder: CircleBorder(),
                      onTap: () {
                        Scaffold.of(context).closeDrawer();
                        Navigator.of(context).pushNamed(Routes.authUser);

                        // showDialog(
                        //   context: context,
                        //   builder: (context) {
                        //     return AlertDialog(
                        //       backgroundColor: Colors.transparent,
                        //       content: Column(
                        //         mainAxisSize: MainAxisSize.min,
                        //         children: [
                        //           Container(
                        //             decoration: BoxDecoration(
                        //               color: Colors.white70,
                        //               // image: getImage(),
                        //               borderRadius: BorderRadius.circular(10),
                        //             ),
                        //             child: SizedBox(
                        //               height: 300,
                        //               child: Column(
                        //                 children: [Row()],
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //       contentPadding: EdgeInsets.zero,
                        //     );
                        //   },
                        // );
                      },
                      child: CircleAvatar(
                        minRadius: 25,
                        backgroundImage: _getImg(),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: userAvatarImg != null
                              ? null
                              : Center(
                                  child: Text(
                                    _getFirstC(),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                        ),
                      ),
                    ),
                    10.vSpace,
                    if (name != '') Text(name)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
