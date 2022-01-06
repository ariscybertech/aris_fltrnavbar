import 'package:flutter/material.dart';
import './widgets/screen_three.dart';
import './navigation_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationScreen(),
      routes: {
        ScreenThree.route: (ctx) => ScreenThree(),
      },


    );
  }
}
