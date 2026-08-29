import 'package:{{name.snakeCase()}}/core/services/network/api_service.dart';

abstract class SplashRemoteDataSource {}

class RemoteDataSourceImpl implements SplashRemoteDataSource {
  final ApiService client = ApiService();
}
