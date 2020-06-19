import 'package:flutter/material.dart';

class ChangeScreen extends ChangeNotifier {
  var currentScreen = AllScreens.screenOne;

  routeScreen(String screenName) {
    if (screenName == "one") {
      currentScreen = AllScreens.screenOne;
    } else if (screenName == "two") {
      currentScreen = AllScreens.screenTwo;
    } else {
      currentScreen = AllScreens.screenThree;
    }

    notifyListeners();
  }
}

enum AllScreens {
  screenOne,
  screenTwo,
  screenThree,
}