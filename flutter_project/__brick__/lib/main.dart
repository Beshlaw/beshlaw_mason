import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:{{name.snakeCase()}}/core/constants/app_sizes.dart';
import 'package:{{name.snakeCase()}}/core/constants/helpers.dart';
import 'package:{{name.snakeCase()}}/core/routing/app_router.dart';
import 'package:{{name.snakeCase()}}/generated/l10n.dart';
import 'package:{{name.snakeCase()}}/splash_module/presentation/screens/splash_screen.dart';
import 'package:{{name.snakeCase()}}/core/services/service_locator.dart';
import 'package:{{name.snakeCase()}}/core/theme/themes/light_theme.dart';
import 'package:{{name.snakeCase()}}/core/theme/themes/dark_theme.dart';
import 'package:{{name.snakeCase()}}/core/utils/app_shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPreferences.init();
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp._internal();
  factory MyApp() => MyApp._internal();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(BaseAppScreenSize.width, BaseAppScreenSize.height),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'Flutter Demo',
        initialRoute: SplashScreen.routeName,
        onGenerateRoute: AppRouter().generateRoute,
        theme: lightTheme(context),
        darkTheme: darkTheme(context),
        themeMode: ThemeController.themeNotifier.value,
      ),
    );
  }
}
