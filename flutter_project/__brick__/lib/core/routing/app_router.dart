import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/core/routing/routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final builder = Routes.routes[settings.name];
    if (builder != null) {
      return _createRoute(builder());
    }
    return null;
  }

  PageRouteBuilder _createRoute(Widget page) {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 400),
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}
