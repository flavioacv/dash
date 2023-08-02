import 'package:dash/app/core/constants/routes/app_route.dart';
import 'package:dash/app/modules/onboard/presentation/pages/onboard_page.dart';
import 'package:dash/app/modules/splash/presentation/pages/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      AppRoute.initialRoute,
      child: (context) => const SplashPage(),
    );
    r.child(
      AppRoute.onboardRoute,
      child: (context) => const OnboardPage(),
    );
  }
}
