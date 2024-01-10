import 'package:flutter/material.dart';

import '../routing/route_names.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Необходимо авторизоваться в системе для продолжения работы",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        Container(height: 20),
        OutlinedButton(
          onPressed: (){
            Navigator.of(context).pushNamed(AuthRoute);
          },
          child: Text("Авторизация"),
        )
      ]
    );
  }
}
