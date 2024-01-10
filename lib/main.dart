import 'package:flutter/material.dart';
import 'package:ntk_bybit_bot/routing/route_names.dart';
import 'package:ntk_bybit_bot/routing/router.dart';
import 'package:ntk_bybit_bot/services/navigation_service.dart';
import 'package:ntk_bybit_bot/views/layout_template/layout_template.dart';

import 'locator.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (context, child) => LayoutTemplate(
        child: child!,
      ),
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
    );
  }
}
