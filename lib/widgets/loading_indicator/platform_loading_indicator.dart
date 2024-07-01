
import 'package:flutter/cupertino.dart';
import 'package:fluttersample/widgets/loading_indicator/android_loading_indicator.dart';
import 'package:fluttersample/widgets/loading_indicator/ios_loading_indicator.dart';

abstract class PlatformLoadingIndicator {
  factory PlatformLoadingIndicator(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidLoadingIndicator();
      case TargetPlatform.iOS:
        return IOSLoadingIndicator();
      default:
        return AndroidLoadingIndicator();
    }
  }

  Widget build(BuildContext context, {double? progress});
}
