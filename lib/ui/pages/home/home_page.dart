import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sanad/common.dart';
import 'package:sanad/domain/entities/task/task_entity.dart';
import 'package:sanad/ui/common/constants/json.dart';
import 'package:sanad/ui/pages/components.dart';
import 'package:sanad/ui/pages/home/item_page.dart';
import 'package:sanad/ui/providers/home_provider/p.dart';
import 'package:sanad/ui/providers/index.dart';
import 'package:sanad/ui/widgets/with_refresh.dart';

// import '../../providers/home_provider/task_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: SafeArea(child: DrawerPage()),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(context.tr.homeTitle),
      ),
      body: Consumer(builder: (context, ref, c) {
        // final data_ = ref.watch(homeDataProvider);
        final internet = ref.watch(interNetProvider);
        final tasks = ref.watch(homeProvider.select((s) => s.tasks));
        final isLoading = ref.watch(homeProvider.select((s) => s.isLoading));
        if (internet.contains(ConnectivityResult.none)) {
          return StateR(
            sType: StateType.fullScreenEmptyState,
            json: JsonAssets.noNet,
            message: context.tr.noInternet,
          );
        }

        // final tasks = tasks_.data;
        if (isLoading) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircularProgressIndicator(),
              ),
            ],
          );
        }

        return WithRefreshWidget(
          onRefresh: () async {
            await ref.read(homeProvider.notifier).refresh();
          },
          children: [
            // ...tasks.reversed.map((t) =>
            if (tasks.isNotEmpty)
              Column(
                children: [
                  ...tasks.map(
                    (t2) => _IW(t: t2),
                  ),
                ],
              )
            // ...List.generate(
            //   tasks.length,
            //   (index) {
            //     final t = tasks.reversed.toList()[index];

            //     // return Column(
            //     //   children: [
            //     //     ...t.data.map(
            //     //       (t2) => _IW(t: t2),
            //     //     ),
            //     //   ],
            //     // );
            //   },
            // )
            // )
          ],
        );
      }),
    );
  }
}

class Home extends ConsumerWidget {
  const Home(this.data, {super.key});

  final List<TaskEntity> data;

  @override
  Widget build(BuildContext context, ref) {
    if (data.isEmpty) {
      return Container(
        constraints:
            BoxConstraints(minHeight: MediaQuery.of(context).size.height * 0.8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            StateR(
              sType: StateType.fullScreenEmptyState,
              message: context.tr.homeEmptyText,
            )
          ],
        ),
      );
    }
    return Column(
      children: <Widget>[
        HLine(),
        ...data.map(
          (t) => _IW(t: t),
        )
      ],
    );
  }
}

class _IW extends StatelessWidget {
  const _IW({required this.t});
  final TaskEntity t;

  @override
  Widget build(BuildContext context) {
    final smStyl = Theme.of(context).textTheme.bodySmall;
    return Column(
      children: [
        ListTile(
          onTap: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) {
                return Dialog.fullscreen(
                  child: SafeArea(
                    child: ItemPage(
                      taskEntity: t,
                      title: t.companyName,
                    ),
                  ),
                );
              },
            );
          },
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${t.city}  -  ${t.publishedAtH}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    10.vSpace,
                    Text(
                      t.customer,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    10.vSpace,
                    Row(
                      children: [
                        Text(
                          'العنوان',
                          style: smStyl,
                        ),
                        10.hSpace,
                        Text(
                          t.address,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: smStyl,
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.holiday_village,
                  color: Colors.grey.shade600,
                )
              ],
            ),
          ),
        ),
        HLine()
      ],
    );
  }
}
