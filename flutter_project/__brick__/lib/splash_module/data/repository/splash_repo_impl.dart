import 'package:{{name.snakeCase()}}/splash_module/data/datasource/splash_remote_data_source.dart';
import 'package:{{name.snakeCase()}}/splash_module/domain/repository/splash_repo.dart';

class SplashRepoImpl implements SplashRepo {
  final SplashRemoteDataSource remote;

  SplashRepoImpl(this.remote);
}
