
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttersample/widgets/dialog/platform_dialog.dart';
import 'package:fluttersample/widgets/loading_indicator/platform_loading_indicator.dart';

class PlatformWidgets {
  static Widget buildDialog(
    BuildContext context,
    String? title,
    String? content,
    List<PlatformDialogButtonBuilder> actionButtons,
  ) {
    return PlatformDialog(Theme.of(context).platform).build(
      context,
      title: title ?? '',
      content: content,
      actionButtons: actionButtons,
    );
  }

  /// Constructs a platform-specific loading indicator.
  ///
  /// The [progress] parameter, which ranges from 0 to 1, indicates the current progress of the loading operation.
  /// The loading indicator's appearance is determined by the current platform theme.
  static Widget buildLoadingIndicator(BuildContext context, {double? progress}) {
    return PlatformLoadingIndicator(Theme.of(context).platform).build(
      context,
      progress: progress,
    );
  }
}
