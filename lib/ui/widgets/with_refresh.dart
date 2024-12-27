import 'package:flutter/material.dart';
import 'package:sanad/ui/widgets/dialog_render.dart';

class WithRefreshWidget extends StatelessWidget {
  const WithRefreshWidget(
      {super.key, required this.onRefresh, required this.children});

  final Future Function() onRefresh;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    // if (children.isEmpty) {
    //   return Center(
    //     child: StateR(sType: StateType.fullScreenEmptyState),
    //   );
    // }
    return Stack(
      children: [
        if (children.isEmpty)
          StateR(
            sType: StateType.fullScreenEmptyState,
          ),
        RefreshIndicator(
          onRefresh: onRefresh,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    ...children,
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
