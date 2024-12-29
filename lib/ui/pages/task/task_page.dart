import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sanad/common.dart';
import 'package:sanad/domain/entities/task/task_entity.dart';
import 'package:sanad/ui/providers/tasks/local_tasks/local_tasks.dart';
import 'package:sanad/ui/providers/tasks/upload/upload.dart';
import 'package:sanad/ui/widgets/with_refresh.dart';
import 'package:uuid/uuid.dart';
import 'package:image_picker/image_picker.dart';

part 'components/task_data.dart';
part 'components/task_photos.dart';
part 'components/task_upload.dart';

final curentTaskItemProvider =
    Provider.family<TaskItemEntity, int>((ref, int index) {
  final tasks = ref.watch(localTasksProvider);
  final instance_ = tasks.tasks.where((t) => t.task.id == index);
  return instance_.first;
});

class TaskPage extends StatelessWidget {
  const TaskPage(this.taskId, {super.key});
  final int taskId;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: SafeArea(
          child: TabBar(
            unselectedLabelColor: Colors.grey,
            dividerColor: Colors.transparent,
            padding: EdgeInsets.zero,
            automaticIndicatorColorAdjustment: false,
            indicator: BoxDecoration(),
            tabs: [
              Tab(
                icon: Icon(Icons.table_chart),
              ),
              Tab(icon: Icon(Icons.photo_library)),
              Tab(icon: Icon(Icons.upload)),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),

          // dragStartBehavior: DragS,
          children: [
            _TaskItemDataPage(taskId),
            _TaskItemPhotosPage(taskId),
            _TaskItemUploadPage(taskId)
          ],
        ),
      ),
    );
  }
}
