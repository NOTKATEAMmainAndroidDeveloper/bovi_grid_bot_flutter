import 'package:flutter/material.dart';
import 'package:ntk_bybit_bot/services/navigation_service.dart';

import '../routing/route_names.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  String key = "";
  String pass = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          color: Colors.black87,
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Padding(
              padding: EdgeInsets.all(21),
              child: Column(
                children: [
                  Text(
                    "Введите ключ API",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  TextField(
                    onChanged: (text){
                      key = text;
                    },
                    style: TextStyle(
                        color: Colors.redAccent
                    ),
                  ),
                  Container(height: 20),
                  Text(
                    "Введите пароль API",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  TextField(
                    onChanged: (text){
                      pass = text;
                    },
                    style: TextStyle(
                        color: Colors.redAccent
                    ),
                  ),
                  Container(height: 20),
                  OutlinedButton(
                    onPressed: (){
                      Navigator.of(context).pushNamed(MainRoute);
                    },
                    child: Text("Авторизация"),
                  ),
                ],
              ),
            )
          )
        )

      ],
    );
  }
}
