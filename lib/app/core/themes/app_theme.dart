import 'package:dash/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  brightness: Brightness.light,
  colorSchemeSeed: const Color(0xff0EFF79),
  useMaterial3: true,
  scaffoldBackgroundColor: const Color(0xffFFFFFF),
  extensions: [
    AppColors(
        green: const Color(0xff0EFF79),
        blue: const Color(0xff00F5FF),
        white: const Color(0xffFFFFFF),
        black: const Color(0xff3D003E),
        red: const Color(0xffFF2D55),
        grey: const Color(0xffC7C7CC))
  ],
);
