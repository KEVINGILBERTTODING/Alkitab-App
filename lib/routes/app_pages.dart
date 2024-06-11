import 'package:get/get.dart';
import 'package:yesheis/modules/home/bindings/home_binding.dart';
import 'package:yesheis/modules/home/views/home_view.dart';
import 'package:yesheis/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:yesheis/modules/onboarding/views/onboarding_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static final routes = [
    GetPage(
      name: _Path.ONBOARDING,
      binding: OnBoardingBinding(),
      page: () => OnboardingView(),
    ),
    GetPage(
      name: _Path.HOME,
      binding: HomeBinding(),
      page: () => HomeView(),
    ),
  ];
}
