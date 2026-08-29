import 'package:flutter/material.dart';

class {{name.pascalCase()}}Screen extends StatelessWidget {
  const {{name.pascalCase()}}Screen({super.key});
  static const String routeName = '/{{name.snakeCase()}}';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SizedBox()),);
  }
}
