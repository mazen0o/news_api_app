import 'package:flutter/material.dart';
import 'package:new_app/modules/home_screen/home_screen.dart';
import 'package:new_app/shared/style/my_theme.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName :(context) =>HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
      theme: MyTheme.lightTheme,



    );
  }
}


