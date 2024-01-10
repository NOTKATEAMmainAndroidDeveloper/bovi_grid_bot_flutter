import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ntk_bybit_bot/pages/auth_page.dart';
import 'package:ntk_bybit_bot/pages/home_page.dart';
import 'package:ntk_bybit_bot/pages/main_page.dart';
import 'package:ntk_bybit_bot/routing/route_names.dart';



Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomePage(), settings);
    case AuthRoute:
      return _getPageRoute(AuthPage(), settings);
    case MainRoute:
      return _getPageRoute(MainPage(), settings);
    default:
      return _getPageRoute(HomePage(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name!);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({required this.child, required this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
