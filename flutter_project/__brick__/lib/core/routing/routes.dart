import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/splash_module/presentation/controllers/splash_cubit.dart';
import 'package:{{name.snakeCase()}}/splash_module/presentation/screens/splash_screen.dart';

class Routes {
  static Map<String, Widget Function()> routes = {
    SplashScreen.routeName: () => BlocProvider(
      create: (context) => SplashCubit()..startSplash(),
      child: SplashScreen(),
    ),
  };
}
