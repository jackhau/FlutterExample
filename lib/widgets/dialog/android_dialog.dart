
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttersample/widgets/dialog/button/platform_dialog_action.dart';
import 'package:fluttersample/widgets/dialog/platform_dialog.dart';

class AndroidDialog implements PlatformDialog {
  @override
  Widget build(
    BuildContext context, {
    required String title,
    String? content,
    required List<PlatformDialogButtonBuilder> actionButtons,
  }) {
    final actions = actionButtons
        .map(
          (e) => PlatformDialogButton(TargetPlatform.android).build(
            context,
            text: e.text,
            onPressed: e.onPressed,
            isDefaultAction: e.isDefaultAction,
            isDestructiveAction: e.isDestructiveAction,
          ),
        )
        .toList();
    return AlertDialog(title: Text(title), content: content != null ? Text(content) : null, actions: actions);
  }
}
