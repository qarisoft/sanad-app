import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sanad/app/constants.dart';
import 'package:sanad/app/errors/failure.dart';
import 'package:sanad/data/src/index.dart';
import 'package:sanad/domain/entities/task/task_entity.dart';
import 'package:sanad/ui/providers/ex.dart';

import '../../home_provider/task_provider.dart';
import '../local_tasks/local_tasks.dart';
part 'accept.g.dart';
@Riverpod(dependencies: [LocalTasks])
FutureOr<bool> accept(Ref ref, int taskId) async {
  final dio = await ref.getDebouncedDio();
  final res = await dio.post('$baseUrl/home/accept/$taskId');
  final tasks = ref.watch(localTasksProvider);

  if (res.data['status'] == 1) {
    final task = TaskEntity.fromJson(res.data['data']);
    final taskItem = TaskItemEntity.fromJson({
      ...res.data['data'],
      'task': task.toJson(),
    });

    if (task.id != 0) {
      final newList = <TaskItemEntity>{...tasks.tasks, taskItem}.toList();
      await appStorage().setLocalTasks(tasks.copyWith(tasks: newList));
      ref.invalidate(localTasksProvider);
      ref.invalidate(homeDataProvider);
      return true;
    }
  } else {
    throw ServerErrorsWithMsg([res.data['message']]);
  }
  return false;
}
