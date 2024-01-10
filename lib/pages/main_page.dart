import 'package:flutter/material.dart';
import 'package:ntk_bybit_bot/services/bybit_services/bybit.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String data = "";

  getTicker() async{
    var _data = await BybitService(key: "", secret: "").getTicker();

    String resStr = "";

    for (var element in _data) {
      resStr += element.symbol + "<  ";
    }

    setState(() {
      data = resStr;
    });
  }

  @override
  void initState() {
    getTicker();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
        data,
      style: TextStyle(
        color: Colors.white
      ),
    );
  }
}
