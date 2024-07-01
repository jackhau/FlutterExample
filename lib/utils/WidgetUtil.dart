import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttersample/widgets/dialog/platform_dialog.dart';
import 'package:fluttersample/widgets/dialog/platform_widgets.dart';

class WidgetUtil {

  static Future<T?> showAlertDialog<T>(
      BuildContext context, {
        required String? title,
        required String? content,
        required List<PlatformDialogButtonBuilder> actionsBuilder,
        bool dismissible = true,
      }) {
    return showDialog<T>(
      context: context,
      barrierDismissible: dismissible,
      builder: (BuildContext context) => PlatformWidgets.buildDialog(context, title, content, actionsBuilder),
    );
  }

  static Future<void> showDefaultErrorDialog(BuildContext context, String errorMessage) async {
    final actionBuilders = [
      PlatformDialogButtonBuilder(
        text: 'S.current.textOk',
        isDefaultAction: true,
      ),
    ];
    if (context.mounted) {
      return WidgetUtil.showAlertDialog(
        context,
        title: 'S.current.errorTitle',
        content: errorMessage,
        actionsBuilder: actionBuilders,
      );
    }
  }
}