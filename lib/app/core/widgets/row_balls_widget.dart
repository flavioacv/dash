import 'package:flutter/material.dart';

import 'circle_widget.dart';

class RowBallsWidget extends StatelessWidget {
  final int index;

  final double? spacingBalls;
  final int quantity;

  const RowBallsWidget({
    this.spacingBalls,
    required this.quantity,
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double spacing = spacingBalls ?? 3.0;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          quantity,
          (indexItem) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: spacing),
              child: CircleWidget(
                index: indexItem + 1,
                indexSelected: index,
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
