import 'package:flutter/material.dart';
class ScreenThree extends StatelessWidget {
  static const route = 's3';
  @override
  Widget build(BuildContext context) {
    final String name = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Three'),
      ),
      body: GestureDetector(
        child: Container(
          child: Text(name, style: TextStyle(fontSize: 30),),
        ),
        //this is how we return data back to the page it started.
        onTap:(){
          Navigator.of(context).pop('wow');},
      ),
    );
  }
}
