import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/core/constants/colors.dart';

final List<BoxShadow> kSmallShadow = [
  BoxShadow(color: kBlack.withAlpha(50), blurRadius: 3, offset: Offset(0, 1)),
  BoxShadow(color: kBlack.withAlpha(50), blurRadius: 3, offset: Offset(0, 2)),
];

final List<BoxShadow> kLightShadow = [
  BoxShadow(color: kBlack.withAlpha(10), blurRadius: 2, offset: Offset(0, 1)),
  BoxShadow(color: kBlack.withAlpha(10), blurRadius: 3, offset: Offset(0, 1)),
];

final List<BoxShadow> kBigShadow = [
  BoxShadow(
    color: Colors.black.withAlpha(25),
    blurRadius: 15.0,
    offset: Offset(0, 10),
  ),
  BoxShadow(
    color: Colors.black.withAlpha(25),
    blurRadius: 6.0,
    offset: Offset(0, 4),
  ),
];
