import 'package:flutter/cupertino.dart';

class ChangeScreen extends ChangeNotifier {

  var currentScreen = Screen.screenOne;

  routeScreen(String screenName){
    if(screenName == "one"){
      currentScreen = Screen.screenOne;
    }else if(screenName == "two"){
      currentScreen = Screen.screenTwo;
    }else{
      currentScreen = Screen.screenThree;
    }

    notifyListeners();
  }
}

enum Screen {
  screenOne,
  screenTwo,
  screenThree,
}