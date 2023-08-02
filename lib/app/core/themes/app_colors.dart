// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color green;
  final Color blue;
  final Color white;
  final Color black;
  final Color red;
  final Color grey;
  AppColors({
    required this.green,
    required this.blue,
    required this.white,
    required this.black,
    required this.red,
    required this.grey,
  });

  @override
  ThemeExtension<AppColors> copyWith({
    Color? green,
    Color? blue,
    Color? white,
    Color? black,
    Color? red,
    Color? grey,
  }) {
    return AppColors(
      green: green ?? this.green,
      blue: blue ?? this.green,
      white: white ?? this.white,
      black: black ?? this.black,
      red: red ?? this.red,
      grey: grey ?? this.grey,
    );
  }

  @override
  AppColors lerp(covariant AppColors? other, double t) {
    return AppColors(
      green: Color.lerp(green, other?.green, t)!,
      blue: Color.lerp(blue, other?.blue, t)!,
      white: Color.lerp(white, other?.white, t)!,
      black: Color.lerp(black, other?.black, t)!,
      red: Color.lerp(red, other?.red, t)!,
      grey: Color.lerp(grey, other?.grey, t)!,
    );
  }
}
