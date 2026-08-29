part of '{{name.snakeCase()}}_cubit.dart';

sealed class {{name.pascalCase()}}State {}

final class {{name.pascalCase()}}Initial extends {{name.pascalCase()}}State {}

final class {{name.pascalCase()}}Loading extends {{name.pascalCase()}}State {}

final class {{name.pascalCase()}}Success extends {{name.pascalCase()}}State {}

final class {{name.pascalCase()}}Error extends {{name.pascalCase()}}State {
  final String message;
  {{name.pascalCase()}}Error(this.message);
}
