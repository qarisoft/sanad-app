// import 'package:sanad/ui/providers/index.dart';
import 'package:curved_navigation_bar_with_label/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sanad/app/errors/failure.dart'; // import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sanad/common.dart';
import 'package:sanad/ui/providers/ex.dart';

import '../../providers/home_provider/task_provider.dart';
import 'home_page.dart';
import 'local_tasks_page.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    ref.listen(
      messageProvider,
      (a, b) {
        if (b is UnAuthorized) {
          showDialog(
            context: context,
            builder: (context) {
              return StateR(
                sType: StateType.popupErrorState,
                message: 'unAuthorized',
                retryActionFunction: ref.logOut_,
              );
            },
          );
        }
      },
    );
    final pages = [
      HomePage(),
      LocalTasksPage(),
    ];
    final index = useState(0);

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonLabelColor: Colors.grey.shade700,
        color: Colors.white,
        animationDuration: Duration(milliseconds: 200),
        items: [
          CurvedNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: index.value == 0 ? AppColor.primary : Colors.grey,
            ),
            label: context.tr.bottomNavOnlineTasks,
          ),
          CurvedNavigationBarItem(
            icon: Icon(
              Icons.archive,
              color: index.value == 1 ? AppColor.primary : Colors.grey,
            ),
            label: context.tr.bottomNavLocalTasks,

          ),
        ],
        index: index.value,
        onTap: (i) => index.value = i,
      ),
      body: pages[index.value],
    );
  }
}
