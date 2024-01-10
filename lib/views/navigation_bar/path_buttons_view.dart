import 'package:flutter/material.dart';
import 'package:ntk_bybit_bot/routing/navigation_bar_data.dart';

class PathButtonsView extends StatelessWidget {
  const PathButtonsView({super.key, required this.data});
  final NavigationBarDataClass data;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Colors.white,
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Text(
          data.title,
          style: TextStyle(
            color: Colors.white,
                fontSize: 24
          ),
        ),
      ),
    );
  }
}
