import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sanad/data/src/index.dart';
// import 'package:sanad/common.dart';
import 'package:sanad/domain/entities/task/task_entity.dart';
part 'local_tasks.g.dart';

@Riverpod(dependencies: [])
class LocalTasks extends _$LocalTasks {
  @override
  LocalTasksList build() {
    return appStorage().getLocalTasks();
  }

  Future<bool> deleteItem(int id) async {
    return await _updateTasks(
      state.tasks.where((i) => i.task.id != id).toList(),
    );
  }

  Future<bool> _updateTasks(List<TaskItemEntity> ss) async {
    // final rest = ss.where((s)=>s.k);
    try {
      final a = await appStorage().setLocalTasks(state.copyWith(tasks: ss));
      if (a) {
        ref.invalidateSelf();
      }
      return a;
    } catch (e) {
      return false;
    }
  }

  static const String totalK = 'total_estate_cost';

  Future<bool> updateItem(TaskItemEntity item) async {
    final itemPricing = item.pricing
        .where(
          (p) => p.key != totalK,
        )
        .toList();

    final price = itemPricing.fold(0.0, (a, b) {
      return a + b.meterSquarePrice;
    });

    final area = itemPricing.fold(0.0, (a, b) {
      return a + b.meterSquareArea;
    });

    final totalP = itemPricing.fold(0.0, (a, b) {
      return a + b.totalPrice;
    });

    final s = state.tasks.map(
      (i) {
        if (i.task.id == item.task.id) {
          return item.copyWith(
            pricing: item.pricing.map(
              (i_) {
                if (i_.key == totalK) {
                  return i_.copyWith(
                    totalPrice: totalP,
                    meterSquarePrice: price,
                    meterSquareArea: area,
                  );
                }
                return i_;
              },
            ).toList(),
          );
        }
        return i;
      },
    ).toList();

    return await _updateTasks(s);
  }
}
