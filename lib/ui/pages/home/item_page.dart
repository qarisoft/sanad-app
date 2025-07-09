import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sanad/common.dart';
import 'package:sanad/domain/entities/task/task_entity.dart';
import 'package:sanad/ui/pages/components.dart';
import 'package:sanad/ui/providers/home_provider/p.dart';
import 'package:sanad/ui/providers/tasks/accetpt/accept.dart';
import 'package:sanad/ui/providers/tasks/local_tasks/local_tasks.dart';
// import 'package:sanad/ui/providers/home_provider/task_provider.dart';

class ItemPage extends ConsumerWidget {
  const ItemPage({required this.taskEntity, required this.title, super.key});

  final TaskEntity taskEntity;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    accept() => callActionDialog(
          context,
          acceptProvider(taskEntity.id),
          yesAction: () {
            ref.invalidate(homeProvider);
            ref.invalidate(localTasksProvider);
          },
          action: (BuildContext? c_) {
            if(c_!=null) {
              Navigator.of(context)
                  .popAndPushNamed(Routes.task, arguments: taskEntity.id);
            }
          },
        );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                10.vSpace,
                Text(title),
              ],
            ),
          ),
          centerTitle: true,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.grey.shade300),
            // ),

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // TextButton(
                        //   onPressed: () {},
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(8.0),
                        //     child: Text(
                        //       context.tr.accept,
                        //       style: TextStyle(color: Colors.blue),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: FloatingActionButton(
                      shape: CircleBorder(),
                      onPressed: accept,
                      child: Icon(
                        Icons.reply_all,
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                ],
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      taskEntity.publishedAtH,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    // Text('البيانات'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: HLine(),
              ),
              _ItemContainer(
                children: [
                  _Item(
                    title: taskEntity.city,
                    leading: 'المدينة',
                  ),
                  _Item(
                    title: taskEntity.address,
                    leading: 'العنوان',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: HLine(),
              ),
              _ItemContainer(
                children: [
                  _Item(
                    title: taskEntity.estateType,
                    leading: 'العقار',
                  ),
                  _Item(
                    title: taskEntity.finishedAtH,
                    leading: 'التوقيت',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: HLine(),
              ),
              _ItemContainer(
                children: [
                  _Item(
                    title: taskEntity.customer,
                    leading: 'العميل',
                  ),
                  _Item(
                    title: '123 123 132',
                    leading: 'الاتصال',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: HLine(),
              ),
              _ItemContainer(
                children: [
                  _Item(
                    title: taskEntity.code,
                    leading: 'الكود',
                  ),
                  // _Item(
                  //   title: taskEntity.address,
                  //   leading: 'العنوان',
                  // ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: HLine(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ItemContainer extends StatelessWidget {
  const _ItemContainer({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({required this.leading, required this.title});

  final String leading;
  final String title;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width * 0.5;
    return Container(
      decoration: BoxDecoration(
          // border: Border.all(),
          // color: Colors.grey,
          ),
      width: w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: w * 0.3,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  leading,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
          ),
          SizedBox(
            width: w * 0.7,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title == '' ? ' - - - ' : title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          )
        ],
      ),
    );
  }
}
