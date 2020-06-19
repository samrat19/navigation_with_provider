import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      color: Colors.teal[900],
      child: Center(
        child: Text(
          'Third Screen',
          style: TextStyle(
            color: Colors.white,
            fontSize: height / 12,
          ),
        ),
      ),
    );
  }
}
