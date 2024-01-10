import 'package:flutter/material.dart';
import 'package:ntk_bybit_bot/routing/navigation_bar_data.dart';
import 'package:ntk_bybit_bot/views/navigation_bar/path_buttons_view.dart';

class NavigationBarView extends StatefulWidget {
  const NavigationBarView({super.key});

  @override
  State<NavigationBarView> createState() => _NavigationBarViewState();
}

class _NavigationBarViewState extends State<NavigationBarView> {
  List<Widget> pathButtons = [];

  @override
  void initState() {
    for(NavigationBarDataClass el in navigationBarData){
      pathButtons.add(PathButtonsView(data: el,));
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(24),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              color: Colors.black,
              elevation: 4,
              shadowColor: Colors.white,
              child: Container(
                  height: 100,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ...pathButtons
                      ],
                    ),
                  ))),
        )),
      ],
    );
  }
}
