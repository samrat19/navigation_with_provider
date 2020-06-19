import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      color: Colors.green[900],
      child: Center(
        child: Text(
          'Welcome to Provider',
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