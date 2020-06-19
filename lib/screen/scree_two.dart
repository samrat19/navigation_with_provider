import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      color: Colors.blueGrey[900],
      child: Center(
        child: Text(
          'Second Screen',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: height / 14,
          ),
        ),
      ),
    );
  }
}