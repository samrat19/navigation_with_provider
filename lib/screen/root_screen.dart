import 'package:flutter/material.dart';
import 'package:navigationcheck/logic/change_screen.dart';
import 'package:navigationcheck/screen/scree_two.dart';
import 'package:navigationcheck/screen/screen_one.dart';
import 'package:provider/provider.dart';

class RootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen = Provider.of<ChangeScreen>(context);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      top: true,
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          child: Stack(
            children: [
              screen.currentScreen == Screen.screenOne
                  ? ScreenOne()
                  : screen.currentScreen == Screen.screenTwo
                      ? ScreenTwo()
                      : Screen.screenThree,
              Positioned(
                bottom: 0.0,
                child: Container(
                  height: height / 10,
                  width: width,
                  color: Colors.blue[900].withOpacity(0.7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          screen.routeScreen('one');
                        },
                        child: Icon(
                          Icons.home,
                          size: 40.0,
                          color: screen.currentScreen == Screen.screenOne
                              ? Colors.white
                              : Colors.white70,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          screen.routeScreen('two');
                        },
                        child: Icon(
                          Icons.account_balance,
                          size: 40.0,
                          color: screen.currentScreen == Screen.screenTwo
                              ? Colors.white
                              : Colors.white70,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          screen.routeScreen('three');
                        },
                        child: Icon(
                          Icons.account_balance_wallet,
                          size: 40.0,
                          color: screen.currentScreen == Screen.screenThree
                              ? Colors.white
                              : Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
