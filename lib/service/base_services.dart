
import 'dart:io';

import 'package:dio/dio.dart';
import 'dart:async';
import '../constants/constants.dart';
import '../network/my_response.dart';

abstract class BaseServices {

  BaseServices() {
    _init();
  }

  static String? hostUrl = EnvValues.hostUrl;
  static BaseServices? _instance;
  String get apiUrl => hostUrl ?? '';

  Dio? _dio;

  Dio? get dio {
    if (_instance == null || _instance?._dio == null) {
      _instance?._init();
    }
    return _instance?._dio;
  }

  Future _init() async {
    _instance = this;
    _dio =
        Dio(BaseOptions(headers: <String, String>{'Content-Type': ContentType.json.value}));
  }

  Future<MyResponse> callAPI(
      HttpRequestType requestType,
      String path, {
        dynamic postBody,
        Options? options,
        ProgressCallback? onReceiveProgress,
        Map<String, dynamic>? queryParameters,
        String? savePath,
        bool? noAuth,
      }) async {
    try {
      //dio?.options.contentType = Headers.formUrlEncodedContentType;
      Response? response;

      final client = noAuth ?? false ? Dio() : dio;

      switch (requestType) {
        case HttpRequestType.get:
          response = await client?.get(
            path,
            onReceiveProgress: (count, total) {
              if (total != -1) {
                onReceiveProgress?.call(count, total);
              }
            },
            queryParameters: queryParameters,
          );
        case HttpRequestType.post:
          response = await client?.post(
            path,
            data: postBody,
            options: options,
            queryParameters: queryParameters,
          );
        case HttpRequestType.put:
          response = await client?.put(
            path,
            data: postBody,
            options: options,
            queryParameters: queryParameters,
          );
        case HttpRequestType.patch:
          response = await client?.patch(
            path,
            data: postBody,
            options: options,
            queryParameters: queryParameters,
          );
        case HttpRequestType.delete:
          response = await client?.delete(
            path,
            data: postBody,
            options: options,
            queryParameters: queryParameters,
          );
        case HttpRequestType.download:
          response = await client?.download(
            path,
            savePath,
            options: options,
            queryParameters: queryParameters,
            onReceiveProgress: (count, total) {
              if (total != -1) {
                onReceiveProgress?.call(count, total);
              }
            },
          );
      }

      final code = response?.statusCode;
      if (code == HttpStatus.ok || code == HttpStatus.accepted || code == HttpStatus.created) {
        return MyResponse.complete(response?.data);
      }
    } on DioException catch (e) {
      // return _handleDioException(e);
      return MyResponse.error(e.toString());
    } catch (e) {
      return MyResponse.error(e.toString());
    }

    return MyResponse.error(DioException(requestOptions: RequestOptions(path: path)));
  }

  // MyResponse _handleDioException(DioException e) {
  //   String? message;
  //   switch (e.type) {
  //     case DioExceptionType.connectionTimeout:
  //       message = 'S.current.apiRequestFailed';
  //     case DioExceptionType.connectionError:
  //       message = 'S.current.noInternetConnectionPlsTryAgain';
  //     default:
  //       if (e.response?.data is Map<String, dynamic>) {
  //         return MyResponse.error(ErrorModel.fromJson(e.response?.data as Map<String, dynamic>).toJson());
  //       }
  //       message = e.message;
  //       break;
  //   }
  //
  //   return MyResponse.error(
  //     ErrorModel(
  //       error: e.error.toString(),
  //       statusCode: e.response?.statusCode,
  //       message: message,
  //     ).toJson(),
  //   );
  // }

}