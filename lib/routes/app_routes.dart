part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const ONBOARDING = _Path.ONBOARDING;
  static const Home = _Path.HOME;
}

abstract class _Path {
  static const ONBOARDING = '/onboarding';
  static const HOME = '/home';
}
