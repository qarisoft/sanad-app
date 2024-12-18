// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sanad/ui/common/index.dart';

enum StateType {
  popupLoadingState,
  popupContentState,
  popupErrorState,
  popupSuccess,
  fullScreenLoadingState,
  fullScreenErrorState,
  fullScreenEmptyState,
  contentState
}

class StateR extends StatefulWidget {
  final StateType sType;
  final String? message;
  final String title;
  final Function? retryActionFunction;
  final String? json;
  final Widget? child;

  const StateR(
      {super.key,
      required this.sType,
      this.message,
      this.title = "",
      this.retryActionFunction,
      this.json,
      this.child});

  @override
  State<StateR> createState() => _StateRState();
}

class _StateRState extends State<StateR> {
  @override
  Widget build(BuildContext context) {
    return _getStateWidget(context);
  }

  Widget _getStateWidget(BuildContext context) {
    switch (widget.sType) {
      case StateType.popupLoadingState:
        return _getPopUpDialog(context, [
          _getAnimatedImage(JsonAssets.loading),
          _getMessage(widget.message),
        ]);
      case StateType.popupErrorState:
        return _getPopUpDialog(context, [
          _getAnimatedImage(JsonAssets.error),
          _getMessage(widget.message),
          _getRetryButton(context.tr.dialogAgree, context)
        ]);

      case StateType.fullScreenLoadingState:
        return _getItemsColumn([
          _getAnimatedImage(JsonAssets.loading),
          _getMessage(widget.message)
        ]);
      case StateType.fullScreenErrorState:
        return _getItemsColumn([
          _getAnimatedImage(JsonAssets.error),
          _getMessage(widget.message),
          _getRetryButton(context.tr.dialogAgree, context)
        ]);
      case StateType.fullScreenEmptyState:
        return _getItemsColumn(
            [_getAnimatedImage(JsonAssets.empty), _getMessage(widget.message)]);
      case StateType.contentState:
        return Container();
      case StateType.popupSuccess:
        return _getPopUpDialog(context, [
          _getAnimatedImage(JsonAssets.success),
          _getMessage(widget.title),
          _getMessage(widget.message),
          // if()
          // _getRetryButton(context.tr.dialogAgree, context)
        ]);
      case StateType.popupContentState:
        return _getPopUpDialog(context, [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: _getMessage(widget.title),
          ),
          _getAnimatedImage(JsonAssets.location),
          _getMessage(widget.message),
          _getRetryButton(context.tr.dialogAgree, context)
        ]);
      default:
        return Container();
    }
  }

  Widget _getPopUpDialog(BuildContext context, List<Widget> children) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s14)),
      elevation: AppSize.s1_5,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(AppSize.s14),
          boxShadow: const [BoxShadow(color: Colors.black26)],
        ),
        child: _getDialogContent(context, children),
      ),
    );
  }

  Widget _getDialogContent(BuildContext context, List<Widget> children) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }

  Widget _getItemsColumn(List<Widget> children) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }

  Widget _getAnimatedImage(String animationName) {
    return SizedBox(
      height: AppSize.s100,
      width: AppSize.s100,
      child: Lottie.asset(widget.json ?? animationName),
    );
  }

  Widget _getMessage(String? message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: widget.child ??
            Text(
              message ?? _message,
              style:
                  getRegularStyle(color: Colors.black, fontSize: FontSize.s18),
              textAlign: TextAlign.center,
            ),
      ),
    );
  }

  String get _message => switch (widget.sType) {
        StateType.popupErrorState => context.tr.error,
        StateType.popupSuccess => context.tr.success,
        StateType.popupLoadingState => context.tr.loading,
        StateType.fullScreenLoadingState => context.tr.loading,
        StateType.fullScreenErrorState => context.tr.error,
        StateType.fullScreenEmptyState => context.tr.empty,
        StateType.contentState => '',
        StateType.popupContentState => '',
      };

  Widget _getRetryButton(String buttonTitle, BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              widget.retryActionFunction?.call();
            },
            child: Text(buttonTitle),
          ),
        ),
      ),
    );
  }
}
