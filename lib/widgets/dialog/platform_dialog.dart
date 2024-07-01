
import 'package:flutter/cupertino.dart';
import 'package:fluttersample/widgets/dialog/android_dialog.dart';
import 'package:fluttersample/widgets/dialog/ios_dialog.dart';

class PlatformDialogButtonBuilder {
  final String text;
  final void Function(BuildContext context)? onPressed;
  final bool isDefaultAction;
  final bool isDestructiveAction;

  PlatformDialogButtonBuilder({
    required this.text,
    this.onPressed,
    this.isDefaultAction = false,
    this.isDestructiveAction = false,
  });
}

abstract class PlatformDialog {
  factory PlatformDialog(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidDialog();
      case TargetPlatform.iOS:
        return IOSDialog();
      default:
        return AndroidDialog();
    }
  }

  Widget build(
    BuildContext context, {
    required String title,
    String? content,
    required List<PlatformDialogButtonBuilder> actionButtons,
  });
}
