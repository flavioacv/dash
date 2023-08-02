import 'package:dash/app/core/extensions/theme_extensions.dart';
import 'package:dash/app/core/widgets/row_balls_widget.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  final pageSelected = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 32, right: 32),
        height: 100,
        width: context.screenSize.width,
        child: AnimatedBuilder(
            animation: pageSelected,
            builder: (context, child) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Skip',
                    style: TextStyle(
                      color: context.appTheme.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  RowBallsWidget(quantity: 3, index: pageSelected.value + 1),
                  Text(
                    'Next',
                    style: TextStyle(
                      color: context.appTheme.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              );
            }),
      ),
      body: SizedBox(
        //height: context.screenSize.height,
        width: context.screenSize.width,
        child: PageView(
          onPageChanged: (value) {
            pageSelected.value = value;
          },
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icons/locate.png'),
                    alignment: Alignment.topCenter),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Locate',
                    style: TextStyle(
                      color: context.appTheme.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    width: 312,
                    child: Text(
                      'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.',
                      style: TextStyle(
                        color: context.appTheme.black,
                        fontSize: 21,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icons/unlock.png'),
                    alignment: Alignment.topCenter),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Unlock',
                    style: TextStyle(
                      color: context.appTheme.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    width: 312,
                    child: Text(
                      'Sunt in culpa qui officia deserunt mollit anim id est laborum.',
                      style: TextStyle(
                        color: context.appTheme.black,
                        fontSize: 21,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icons/ride.png'),
                    alignment: Alignment.topCenter),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Ride',
                    style: TextStyle(
                      color: context.appTheme.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    width: 312,
                    child: Text(
                      'Culpa qui officia deserunt mollit anim id est laborum.',
                      style: TextStyle(
                        color: context.appTheme.black,
                        fontSize: 21,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
