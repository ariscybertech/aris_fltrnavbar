import 'package:flutter/material.dart';
import 'package:navigationbars/widgets/screen_three.dart';

class ScreenOne extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          child: Container(

            child: Center(child: Icon(Icons.looks_one, size: 150,)),

          ),
          onTap: (){Navigator.of(context).pushNamed(
            ScreenThree.route,
            arguments: 'Another One',
          ).then((value){
            if(value != null) {
              print('HAHAH $value');
            }})
          ;},
        ),
        
        Text('This is stateful widget.')
      ],
    );
  }
}
