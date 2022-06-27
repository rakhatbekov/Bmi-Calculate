import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class AppTextStyle {
  static const TextStyle appText =
      TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold);
  static const TextStyle getResultText = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: AppColors.green,
  );
  static const TextStyle toStrText =
      TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold);
  static const TextStyle smText = TextStyle(fontSize: 20.0);
  static const TextStyle currentvalueText = TextStyle(
    fontSize: 50.0,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle heightText = TextStyle(
    fontSize: 25.0,
    letterSpacing: 1.0,
  );
  static const TextStyle genderText = TextStyle(fontSize: 25.0);
  static const TextStyle bottomNagigation =
      TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold);
  static const TextStyle circle =
      TextStyle(fontSize: 25.0, color: AppColors.circle);
  static const TextStyle numberText = TextStyle(
    fontSize: 50.0,
    fontWeight: FontWeight.bold,
  );
}
