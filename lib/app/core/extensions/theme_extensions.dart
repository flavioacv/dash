import 'package:dash/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';


extension ThemeExtensions on BuildContext {
  AppColors get appTheme => Theme.of(this).extension<AppColors>()!;
  Size get screenSize => MediaQuery.sizeOf(this);
}
