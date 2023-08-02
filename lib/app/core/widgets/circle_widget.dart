import 'package:dash/app/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  final int index;
  final int indexSelected;

  const CircleWidget({
    required this.index,
    required this.indexSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: index == indexSelected
          ? context.appTheme.black
          : context.appTheme.grey,
      radius: index == indexSelected ? 6.0 : 5.0,
    );
  }
}
