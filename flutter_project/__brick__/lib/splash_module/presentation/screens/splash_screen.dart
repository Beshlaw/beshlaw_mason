import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/core/extensions/navigation_extensions.dart';
import 'package:{{name.snakeCase()}}/splash_module/presentation/components/splash_logo.dart';
import 'package:{{name.snakeCase()}}/splash_module/presentation/controllers/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const String routeName = '/splash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          context.pushReplacementNamed('/home');
        },
        child: Center(child: SplashLogo()),
      ),
    );
  }
}
