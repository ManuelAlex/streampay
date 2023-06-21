import 'package:flutter/material.dart';
import 'package:stream_pay/on_boarding/view/on_boarding_view.dart';
import 'package:stream_pay/splash_screen/view/splash_screen_view.dart';

class Routes {
  static const String splashScreen = '/';
  static const String onBoardingView = '/onBoardingView';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute<dynamic>(
            builder: (_) => const SplashScreenView());

      case Routes.onBoardingView:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const OnBoardingView(),
        );
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() => MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: const Text('No Route Found'),
          ),
        ),
      );
}
