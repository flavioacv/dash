import 'dart:math';

import 'package:dash/app/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> rotateAnimation;
  late final Animation<double> pulseAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    controller.addListener(() {
      setState(() {});
    });

    controller.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        await Future.delayed(const Duration(seconds: 1));
        //widget.onFinish();
      }
    });

    rotateAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 1, end: 0).chain(
          CurveTween(curve: Curves.linear),
        ),
        weight: 50,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 1, end: 1).chain(
          CurveTween(curve: Curves.linear),
        ),
        weight: 50,
      ),
    ]).animate(controller);

    pulseAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 1, end: 1).chain(
          CurveTween(curve: Curves.linear),
        ),
        weight: 50,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 1, end: 1).chain(
          CurveTween(curve: Curves.linear),
        ),
        weight: 20,
      ),
       TweenSequenceItem(
        tween: Tween<double>(begin: 1, end: 0).chain(
          CurveTween(curve: Curves.linear),
        ),
        weight: 30,
      ),
    ]).animate(controller);

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    //print(textAnimation.value);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              context.appTheme.green,
              context.appTheme.blue,
            ],
            begin: Alignment.topLeft,
            end: AlignmentDirectional.bottomEnd,
            stops: const [0.2, 1.0],
          ),
        ),
        child: Center(
          child: Transform.scale(scale: pulseAnimation.value,
            child: Transform.rotate(
                angle: -rotateAnimation.value * (pi * 2),
                child: Image.asset('assets/icons/shape.png')),
          ),
        ),
      ),
    );
  }
}
