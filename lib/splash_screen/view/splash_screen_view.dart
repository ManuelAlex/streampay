import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stream_pay/resources/app_const/app_const_strings.dart';
import 'package:stream_pay/resources/color_manager.dart';
import 'package:stream_pay/resources/routes_manager.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  late final Timer? timer;
  Future<void> delay() async {
    timer = Timer(const Duration(seconds: 2), () async {
      await Navigator.pushReplacement(
        context,
        RouteGenerator.getRoute(
          const RouteSettings(name: Routes.onBoardingView),
        ),
      );
    });
  }

  @override
  void initState() {
    delay();
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ColorManager.primary2,
              ColorManager.primary,
            ],
          ),
        ),
        child: Center(
          child: Text(
            AppStringConst.appName,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
      ),
    );
  }
}
