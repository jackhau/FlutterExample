import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:fluttersample/widgets/dialog/button/platform_dialog_action.dart';

class IOSDialogButton implements PlatformDialogButton {
  @override
  Widget build(
    BuildContext context, {
    required String text,
    void Function(BuildContext context)? onPressed,
    required bool isDefaultAction,
    required bool isDestructiveAction,
  }) {
    return CupertinoDialogAction(
      onPressed: () async {
        // unawaited(HapticFeedback.lightImpact());
        // if (onPressed != null) {
        //   onPressed(context);
        // } else {
        //   context.router.maybePop();
        // }
      },
      isDefaultAction: isDefaultAction,
      isDestructiveAction: isDestructiveAction,
      child: Text(text),
    );
  }
}
