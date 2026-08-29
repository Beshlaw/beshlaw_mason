import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/generated/l10n.dart';

/// General-purpose [BuildContext] extensions for theme and localization.
extension BuildContextExtensions on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  S get text => S.of(this);
}
