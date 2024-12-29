import 'package:flutter/material.dart';
import 'package:sanad/common.dart';

Future<bool> askPermissionDialog({
  required BuildContext context,
  required String text,
  required IconData icon,
  Function(BuildContext)? action,
}) async {
  final a = await showDialog<bool>(
    context: context,
    builder: (context_) {
      // close(bool b) => Navigator.of(context).maybePop(b);
      return AlertDialog(
        icon:
            // icon
            Icon(
          icon,
          // Icons.camera_alt_outlined,
          color: Theme.of(context).colorScheme.primary,
        ),
        title: Text(context.tr.permissionsTitle),
        actionsAlignment: MainAxisAlignment.start,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                '* $text',
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              action?.call(context_);
            },
            child: Text(context.tr.agree),
          )
        ],
      );
    },
  );
  if (a is bool) {
    return a;
  }
  return false;
}
