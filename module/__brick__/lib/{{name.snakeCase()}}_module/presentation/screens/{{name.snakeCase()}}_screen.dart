import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/extensions/navigation_extensions.dart';
import '../components/{{name.snakeCase()}}_logo.dart';
import '../../../{{name.snakeCase()}}_module/presentation/controllers/{{name.snakeCase()}}_cubit.dart';

class {{name.pascalCase()}}Screen extends StatelessWidget {
  const {{name.pascalCase()}}Screen({super.key});
  static const String routeName = '/{{name.snakeCase()}}';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SizedBox()),);
  }
}
