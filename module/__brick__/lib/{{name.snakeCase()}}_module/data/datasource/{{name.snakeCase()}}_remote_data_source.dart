import '../../../core/services/network/api_service.dart';

abstract class {{name.pascalCase()}}RemoteDataSource {}

class RemoteDataSourceImpl implements {{name.pascalCase()}}RemoteDataSource {
  final ApiService client = ApiService();
}
