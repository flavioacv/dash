import 'package:dash/app/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  @override
  Widget build(BuildContext context) {
    //print(textAnimation.value);
    return Scaffold(
      body: Container(
        width: context.screenSize.width,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(),
            Image.asset('assets/icons/shape.png'),
            Column(
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(context.appTheme.white),
                    fixedSize: const MaterialStatePropertyAll(
                      Size(350, 70),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: context.appTheme.black,
                      fontSize: 21,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: context.appTheme.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          color: context.appTheme.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
