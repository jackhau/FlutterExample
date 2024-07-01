
import 'package:flutter/services.dart';
import 'package:fluttersample/constants/app_options.dart';

enum HttpRequestType { get, post, put, patch, delete, download }

final appEnvironmentType = EnvironmentType.fromAppFlavor(appFlavor);

class EnvValues {
  EnvValues._();

  static const hostUrl = String.fromEnvironment('hostUrl');
}

class HttpErrorCode {
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int none = 0;
}