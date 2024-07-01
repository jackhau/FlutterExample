
import 'package:flutter/cupertino.dart';
import 'package:fluttersample/widgets/loading_indicator/platform_loading_indicator.dart';

class IOSLoadingIndicator implements PlatformLoadingIndicator {
  @override
  Widget build(BuildContext context, {double? progress}) {
    if (progress != null) {
      return CupertinoActivityIndicator.partiallyRevealed(progress: progress);
    }
    return const CupertinoActivityIndicator();
  }
}
