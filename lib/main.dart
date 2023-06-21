import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stream_pay/resources/app_const/app_const_strings.dart';
import 'package:stream_pay/resources/routes_manager.dart';
import 'package:stream_pay/resources/theme_manager.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStringConst.appName,
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(
      // ),
      darkTheme: getThemeData(),
      themeMode: ThemeMode.dark,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashScreen,
    );
  }
}
