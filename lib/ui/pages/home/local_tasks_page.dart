// import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:sanad/app/constants.dart';
import 'package:sanad/app/errors/failure.dart';
import 'package:sanad/common.dart';
import 'package:sanad/domain/entities/task/task_entity.dart';
import 'package:sanad/ui/common/constants/json.dart';
import 'package:sanad/ui/pages/components.dart';
import 'package:sanad/ui/providers/app/api/api.dart';
import 'package:sanad/ui/providers/index.dart';
import 'package:sanad/ui/providers/tasks/local_tasks/local_tasks.dart';
import 'package:sanad/ui/widgets/delete_dialog.dart';

class LocalTasksPage extends ConsumerWidget {
  const LocalTasksPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final localTasks = ref.watch(localTasksProvider);
    onDismiss(int id) {
      ref.read(localTasksProvider.notifier).deleteItem(id);
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: SafeArea(child: DrawerPage()),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text(context.tr.homeTitle),
          bottom: TabBar(
            dividerColor: Colors.transparent,
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      context.tr.archiveTasksWaiting,
                    ),
                    5.hSpace,
                    Icon(
                      Icons.watch_later_outlined,
                      size: 20,
                      color: Colors.grey.shade500,
                    ),
                  ],
                ),
              ),
              Tab(text: context.tr.archiveTeasksClosed),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _Tasks(
              onDismiss: onDismiss,
              tasks: localTasks.tasks.where((i) => !i.isClosed).toList(),
            ),
            _Tasks(
              onDismiss: null,
              tasks: localTasks.tasks.where((i) => i.isClosed).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class _Tasks extends ConsumerWidget {
  const _Tasks({
    required this.tasks,
    required this.onDismiss,
  });

  final List<TaskItemEntity> tasks;
  final Function(int id)? onDismiss;

  @override
  Widget build(BuildContext context, ref) {
    confirmDismiss(d, int id) async {
      final a = await showDialog<bool?>(
        context: context,
        builder: (context_) {
          return HookConsumer(builder: (context, ref, c) {
            close() => Navigator.of(context).pop(true);
            final er = ServerErrorsWithMsg([context.tr.serverError]);

            onPress() async {
              final res =
                  await ref.read(callApiProvider.notifier).callUrl((dio) async {
                final rs = await dio.post('$baseUrl/home/cancel/$id');

                final status = rs.data['status'];

                if (status != null && status == 1) return true;
                throw er;
              });

              if (res == 1) close();
            }

            final obj = ref.watch(callApiProvider);
            final internet = ref.watch(interNetProvider);
            if (internet.contains(ConnectivityResult.none)) {
              return StateR(
                sType: StateType.popupErrorState,
                message: context.tr.noInternet,
                json: JsonAssets.noNet,
              );
            }
            return DeleteDialog(
              onPressed: onPress,
              isLoading: obj.whenOrNull(loading: () => true) ?? false,
              errors: obj.whenOrNull(error: (e) => e),
              title: Text(context_.tr.deleteLocalTaskTitle),
              textBody: context_.tr.deleteLocalTaskMsg,
            );
          });
        },
      );

      return a ?? false;
    }

    return tasks.isEmpty
        ? Center(
            child: StateR(sType: StateType.fullScreenEmptyState),
          )
        : SingleChildScrollView(
            child: Column(
              children: [
                // if (tasks.isEmpty)
                5.vSpace,
                ...tasks.map(
                  (lTask_) {
                    final lTask = lTask_.task;
                    return Container(
                      color: Colors.grey.shade200,
                      margin: EdgeInsets.symmetric(vertical: 1),
                      child: Dismissible(
                        key: Key(lTask.id.toString()),
                        direction: DismissDirection.startToEnd,
                        confirmDismiss: onDismiss == null
                            ? (d) async => false
                            : (d) => confirmDismiss(d, lTask.id),
                        onDismissed: onDismiss == null
                            ? null
                            : (dir) {
                                onDismiss?.call(lTask.id);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('${lTask.id} dismissed'),
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              },
                        child: ListTile(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(Routes.task, arguments: lTask.id);
                          },
                          subtitle: Text(
                            lTask.city,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          title: Row(
                            children: [
                              Text(lTask.customer),
                            ],
                          ),
                          trailing: Text(
                            DateFormat.yMd()
                                .format(DateTime.parse(lTask.finishedAt)),
                          ),
                          // contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          );
  }
}
