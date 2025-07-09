import 'package:flutter/material.dart';
import 'package:sanad/ui/widgets/dialog_render.dart';

class WithRefreshWidget extends StatefulWidget {
  const WithRefreshWidget({
    super.key,
    required this.onRefresh,
    required this.children,
    this.onLoad,
    this.showLoader = false,
  });

  final Future Function() onRefresh;
  final Future Function()? onLoad;
  final List<Widget> children;
  final bool showLoader;

  @override
  State<WithRefreshWidget> createState() => _WithRefreshWidgetState();
}

class _WithRefreshWidgetState extends State<WithRefreshWidget> {
  late final ScrollController _controller;
  // ScrollNotification? _lastNotification;
  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification.metrics.extentAfter == 0) {
      if (widget.showLoader) {
        widget.onLoad?.call();
      }
    }
    return false;
  }

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (widget.children.isEmpty)
          StateR(
            sType: StateType.fullScreenEmptyState,
          ),
        RefreshIndicator(
          onRefresh: widget.onRefresh,
          child: NotificationListener<ScrollNotification>(
            onNotification: _handleScrollNotification,
            child: CustomScrollView(
              controller: _controller,
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      ...widget.children,
                      if (widget.showLoader)
                        Padding(
                          padding: EdgeInsetsGeometry.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(),
                            ],
                          ),
                        )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
