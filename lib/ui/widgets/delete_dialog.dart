import 'package:flutter/material.dart';
import 'package:sanad/common.dart';

class DeleteDialog extends StatelessWidget {
  const DeleteDialog({
    super.key,
    required this.onPressed,
    required this.textBody,
    this.withIcon = false,
    this.title,
    this.isLoading = false,
    this.errors,
  });
  final void Function()? onPressed;
  final bool withIcon;
  final String textBody;
  final Widget? title;
  final List<String>? errors;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final errStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Theme.of(context).colorScheme.tertiary,
        );
    return AlertDialog(
      title: errors == null ? title : Text(context.tr.error),
      icon: errors == null
          ? Icon(
              Icons.warning_rounded,
              color: Theme.of(context).colorScheme.error,
            )
          : Icon(
              Icons.warning_rounded,
              color: Theme.of(context).colorScheme.tertiary,
            ),
      actionsAlignment: MainAxisAlignment.start,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (errors == null)
            Text(
              textBody,
            ),
          if (isLoading)
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                15.vSpace,
                CircularProgressIndicator(),
              ],
            ),
          if (errors != null)
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                10.vSpace,
                ...errors!.map((er) {
                  return Text(
                    '- $er',
                    style: errStyle,
                  );
                })
              ],
            )
        ],
      ),
      actions: [
        if (errors == null)
          TextButton(
            onPressed: onPressed,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  context.tr.delete,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.error,
                      ),
                ),
                if (withIcon) 5.hSpace,
                if (withIcon)
                  Icon(
                    Icons.delete_forever,
                    color: Theme.of(context).colorScheme.error,
                  ),
              ],
            ),
          ),
        10.hSpace,
        TextButton(
          onPressed: () {
            Navigator.of(context).maybePop();
          },
          child: Text(context.tr.dialogCancel,style: TextStyle(color: Colors.grey),),
        )
      ],
    );
  }
}
