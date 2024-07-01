
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttersample/widgets/loading_indicator/platform_loading_indicator.dart';

class AndroidLoadingIndicator implements PlatformLoadingIndicator {
  @override
  Widget build(BuildContext context, {double? progress}) {
    if (progress != null) {
      return CircularProgressIndicator(value: progress);
    }
    return const CircularProgressIndicator();
  }
}
