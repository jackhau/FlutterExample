
import 'package:flutter/cupertino.dart';
import 'package:fluttersample/widgets/dialog/button/android_dialog_button.dart';
import 'package:fluttersample/widgets/dialog/button/ios_dialog_button.dart';

abstract class PlatformDialogButton {
  factory PlatformDialogButton(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidDialogButton();
      case TargetPlatform.iOS:
        return IOSDialogButton();
      default:
        return AndroidDialogButton();
    }
  }

  Widget build(
    BuildContext context, {
    required String text,
    void Function(BuildContext context)? onPressed,
    required bool isDefaultAction,
    required bool isDestructiveAction,
  });
}
