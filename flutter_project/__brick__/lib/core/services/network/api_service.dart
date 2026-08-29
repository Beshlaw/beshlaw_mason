import 'package:dio/dio.dart';
import 'package:{{name.snakeCase()}}/core/services/network/dio_client.dart';

class ApiService {
  final Dio _apiClient = DioClient().dio;

  Future<Response> post({
    required String endpoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
  }) async {
    final Response response = await _apiClient.post(
      endpoint,
      data: body,
      options: Options(headers: headers),
    );
    return response;
  }

  Future<Response> get({
    required String endpoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
  }) async {
    final Response response = await _apiClient.get(
      endpoint,
      data: body,
      options: Options(headers: headers),
    );
    return response;
  }
}
