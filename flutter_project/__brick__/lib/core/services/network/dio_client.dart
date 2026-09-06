import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:{{name.snakeCase()}}/core/constants/app_constants.dart';
import 'package:{{name.snakeCase()}}/core/services/network/api_constant.dart';
import 'package:{{name.snakeCase()}}/core/utils/app_shared_preferences.dart';

class DioClient {
  late Dio dio;

  static final DioClient _instance = DioClient._internal();

  factory DioClient() => _instance;

  DioClient._internal() {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstant.baseUrl,
        connectTimeout: ApiConstant.connectTimeout,
        receiveTimeout: ApiConstant.receiveTimeout,
        responseType: ResponseType.json,
      ),
    );
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          String? token = AppPreferences.getData(AppConstants.token);
          if (token != null && token.isNotEmpty) {
            options.headers["Authorization"] = "Bearer $token";
          }
          log("REQUEST => ${options.method}");
          log("URL => ${options.uri}");
          log("HEADER => ${options.headers}");
          log("BODY => ${options.data}");
          handler.next(options);
        },
        onResponse: (response, handler) {
          log("STATUS => ${response.statusCode}");
          log('${response.data}');
          handler.next(response);
        },
        onError: (error, handler) {
          if (error.response?.statusCode == 401) {
            // refresh token logic here
          }
          log("${error.message}");
          handler.next(error);
        },
      ),
    );
  }
}
