import '../datasource/{{name.snakeCase()}}_remote_data_source.dart';
import '../../../{{name.snakeCase()}}_module/domain/repository/{{name.snakeCase()}}_repo.dart';


class {{name.pascalCase()}}RepoImpl implements {{name.pascalCase()}}Repo {
  final {{name.pascalCase()}}RemoteDataSource remote;

  {{name.pascalCase()}}RepoImpl(this.remote);
}
