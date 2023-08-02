import 'package:dash/app/core/constants/routes/app_route.dart';
import 'package:dash/app/modules/onboard/presentation/pages/onboard_page.dart';
import 'package:dash/app/modules/onboard/presentation/pages/slider_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OnboardModule extends Module {
  @override
  void routes(r) {
    r.child(
      AppRoute.initialRoute,
      child: (context) => const OnboardPage(),
    );
    r.child(
      AppRoute.sliderRoute,
      child: (context) => const SliderPage(),
    );
  }
}
