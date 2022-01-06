import 'package:flutter/material.dart';
import 'package:navigationbars/widgets/screen_one.dart';
import 'package:navigationbars/widgets/screen_two.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  // to display the different screen on the different navigation items selected
  // we will have to write multiple functions.
  var selectedBarItem = 0;
  void barTap(index) {   // keep the tapping function with set state out of the
    setState(() {        // out of the BottomNavigationBar widget
      selectedBarItem = index;
    });
  }

  List<Widget> _screens = [
    ScreenOne(),
    ScreenTwo(),
    Container(
        child: Center(child: Icon(Icons.account_circle, size: 150,)),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Navigation Testing App'),),
      ),
      drawer: Drawer(child: Icon(Icons.drag_handle, color: Colors.black,),),
      body: _screens[selectedBarItem],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amber,
          selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.red,
          currentIndex: selectedBarItem,
          type: BottomNavigationBarType.shifting,
          items:  [
            BottomNavigationBarItem(icon: Icon(Icons.phone_iphone), title: Text('Mobile'), backgroundColor: Colors.amber),
            BottomNavigationBarItem(icon: Icon(Icons.notifications_none), title: Text('Notifications'), backgroundColor: Colors.amber),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('Profile'),  backgroundColor: Colors.amber),
          ],
          onTap: barTap,
      ),
    );
  }
}
