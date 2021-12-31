import 'package:flutter/material.dart';
import 'package:programa_completo/Place/ui/screens/homeTrips.dart';
import 'package:programa_completo/User/ui/screens/profileTrips.dart';
import 'package:programa_completo/Place/ui/screens/searchTrips.dart';

class ButtonNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ButtonNavigation();
  }
}

class _ButtonNavigation extends State<ButtonNavigation> {
  int indexTap = 0;
  final List<Widget> myWidgets = [HomeTrips(), SearchTrips(), ProfileTrips()];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: myWidgets[indexTap],
        bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: Colors.white, primaryColor: Colors.purple),
            child: BottomNavigationBar(
              onTap: onTapTapped,
              currentIndex: indexTap,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
              ],
            )));
  }
}
