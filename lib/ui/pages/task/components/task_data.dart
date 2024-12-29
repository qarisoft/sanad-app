part of '../task_page.dart';

class _TaskItemDataPage extends HookConsumerWidget {
  const _TaskItemDataPage(this.taskId);
  final int taskId;
  static const _boxDecoration = BoxDecoration(
    border: Border(
      bottom: BorderSide(color: Colors.grey),
    ),
  );
  static const _padding = EdgeInsets.only(
    bottom: 12,
    top: 12,
    right: 10,
  );

  @override
  Widget build(BuildContext context, ref) {
    final instance = ref.watch(curentTaskItemProvider(taskId));

    onRowTap(TaskPricingEntity row) {
      showDialog<void>(
        context: context,
        builder: (BuildContext dialogContext) {
          return _EditingDialog(row, instance);
        },
      );
    }

    TableRow _TR(TaskPricingEntity row) => TableRow(
          decoration: _boxDecoration,
          children: [
            InkWell(
              onTap: row.key.startsWith('total') ? null : () => onRowTap(row),
              child: Padding(
                padding: _padding,
                child: Text(
                  row.name,
                  maxLines: 3,
                ),
              ),
            ),
            _TCel(
              row.meterSquareArea.toString(),
            ),
            _TCel(
              row.meterSquarePrice.toString(),
            ),
            _TCel(
              row.totalPrice.toString(),
            ),
          ],
        );
    final TaskPricingEntity? total = instance.pricing.firstWhere(
      (i) => i.key.startsWith('total'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr.taskPageDataTitle),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Table(
                columnWidths: {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(0.5),
                  2: FlexColumnWidth(0.5),
                  3: FlexColumnWidth(1)
                },
                defaultVerticalAlignment:
                    TableCellVerticalAlignment.intrinsicHeight,
                children: <TableRow>[
                  TableRow(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(context.tr.taskPricingName,
                            style: Theme.of(context).textTheme.labelLarge),
                      ),
                      _Head(
                        title: context.tr.taskPricingMeterArea,
                        subTitle: context.tr.taskPricingMeterArea2,
                      ),
                      _Head(
                        title: context.tr.taskPricingMeterPrice,
                        subTitle: context.tr.taskPricingMeterPrice2,
                      ),
                      _Head(
                        title: context.tr.taskPricingTotalPrice,
                        subTitle: context.tr.taskPricingTotalPrice2,
                      ),
                    ],
                  ),
                  ...instance.pricing
                      .where((i) => !i.key.startsWith('total'))
                      .map((TaskPricingEntity p) {
                    final row = p;
                    return _TR(row);
                  }),
                  if (total != null) _TR(total)
                ],
              ),
              50.vSpace
            ],
          ),
        ),
      ),
    );
  }
}

class _EditingDialog extends ConsumerWidget {
  const _EditingDialog(this.row, this.instance);
  final TaskPricingEntity row;
  final TaskItemEntity instance;

  @override
  Widget build(BuildContext context, ref) {
    final ma = TextEditingController(
      text: row.meterSquareArea == 0 ? '' : row.meterSquareArea.toString(),
    );

    final mp = TextEditingController(
      text: row.meterSquarePrice == 0 ? '' : row.meterSquarePrice.toString(),
    );

    close() {
      Navigator.of(context).pop();
    }

    priceValidator(String? s) {
      if (mp.text.toDouble() != 0.0) {
        if (s?.toDouble() == 0.0) {
          return context.tr.taskPricingPriceValidator;
        }
      }
    }

    areaValidator(String? s) {
      if (ma.text.toDouble() != 0.0) {
        if (s?.toDouble() == 0.0) {
          return context.tr.taskPricingAreaValidator;
        }
      }
    }

    final style = Theme.of(context).textTheme.bodySmall;
    final k = GlobalKey<FormState>();
    return AlertDialog(
      title: Text(row.name),
      content: Form(
        key: k,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                validator: areaValidator,
                controller: ma,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text(
                    context.tr.taskPricingMeterArea,
                    style: style,
                  ),
                  suffix: Text(
                    context.tr.taskPricingMeterArea2,
                    style: style?.copyWith(color: Colors.grey),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              30.vSpace,
              TextFormField(
                controller: mp,
                validator: priceValidator,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text(
                    context.tr.taskPricingMeterPrice,
                    style: style,
                  ),
                  suffix: Text(
                    context.tr.taskPricingMeterPrice2,
                    style: style?.copyWith(color: Colors.grey),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        Row(
          children: [
            TextButton(
              child: Text(context.tr.agree),
              onPressed: () {
                if (!k.currentState!.validate()) {
                  return;
                }
                final area = ma.text.toDouble();
                final price = mp.text.toDouble();
                if (area == 0.0 || price == 0.0) {
                  return close();
                }
                ref
                    .read(localTasksProvider.notifier)
                    .updateItem(
                      instance.copyWith(
                        pricing: instance.pricing.map(
                          (i) {
                            if (i.key == row.key) {
                              return i.copyWith(
                                meterSquareArea: area,
                                meterSquarePrice: price,
                                totalPrice: area * price,
                              );
                            }
                            return i;
                          },
                        ).toList(),
                      ),
                    )
                    .whenComplete(close);
              },
            ),
          ],
        ),
      ],
    );
  }
}

class _Head extends StatelessWidget {
  const _Head({
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return _Cel(
      child: Column(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class _TCel extends StatelessWidget {
  const _TCel(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    return _Cel(
      child: Text(text, maxLines: 3, textAlign: TextAlign.center),
    );
  }
}

class _Cel extends StatelessWidget {
  const _Cel({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [child],
    );
  }
}
