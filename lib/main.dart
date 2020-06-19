import 'package:flutter/material.dart';
import 'package:navigationcheck/logic/change_screen.dart';
import 'package:navigationcheck/screen/root_screen.dart';
import 'package:provider/provider.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (screen) => ChangeScreen(),
      child: MaterialApp(
        home: RootScreen(),
      ),
    );
  }
}
