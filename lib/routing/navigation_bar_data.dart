import 'package:ntk_bybit_bot/routing/route_names.dart';

class NavigationBarDataClass{
  const NavigationBarDataClass({required this.title, required this.path});
  final String title;
  final String path;
}

List<NavigationBarDataClass> navigationBarData = [
  const NavigationBarDataClass(title: 'Главная', path: HomeRoute),

];