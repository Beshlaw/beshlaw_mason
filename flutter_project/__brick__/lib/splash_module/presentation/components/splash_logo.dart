import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/core/constants/app_sizes.dart';
import 'package:{{name.snakeCase()}}/core/constants/images_provider.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(KImagesProvider.kPrimaryLogo, width: AppWidths.as150);
  }
}
