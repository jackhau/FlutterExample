import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttersample/widgets/dialog/button/platform_dialog_action.dart';


class AndroidDialogButton implements PlatformDialogButton {
  @override
  Widget build(
    BuildContext context, {
    required String text,
    void Function(BuildContext context)? onPressed,
    required bool isDefaultAction,
    required bool isDestructiveAction,
  }) {
    return TextButton(
      onPressed: () async {
        // unawaited(HapticFeedback.lightImpact());
        // if (onPressed != null) {
        //   onPressed(context);
        // } else {
        //   context.router.maybePop();
        // }
      },
      child: Text(text),
    );
  }
}
