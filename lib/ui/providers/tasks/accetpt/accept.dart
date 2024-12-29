import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sanad/app/constants.dart';
import 'package:sanad/app/errors/failure.dart';
import 'package:sanad/data/src/index.dart';
import 'package:sanad/domain/entities/task/task_entity.dart';
import 'package:sanad/ui/providers/ex.dart';

// import '../../home_provider/task_provider.dart';
// import '../local_tasks/local_tasks.dart';
part 'accept.g.dart';

@riverpod
FutureOr<bool> accept(Ref ref, int taskId) async {
  final dio = await ref.getDebouncedDio();
  dio.options = dio.options.copyWith(method: 'POST');
  final res = await ref.tryCaller(DioClass(
    dio: dio,
    path: '$baseUrl/tasks/$taskId/accept',
  ));
  // final res = await dio.post('$baseUrl/tasks/$taskId/accept');

  final tasks = appStorage().getLocalTasks();

  if (res.data['status'] == 1) {
    final taskItem = TaskItemEntity.fromJson(res.data['data']);

    if (taskItem.task.id != 0) {
      final newList = <TaskItemEntity>{...tasks.tasks, taskItem}.toList();
      await appStorage().setLocalTasks(tasks.copyWith(tasks: newList));
      return true;
    }
  } else {
    throw ServerErrorsWithMsg([res.data['message']]);
  }
  return false;
}
