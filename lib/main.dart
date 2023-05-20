import 'package:flutter/material.dart';
import 'package:todo_application/SharedFiles/Styles/my-theme.dart';
import 'package:todo_application/home-Layout/home-layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

initialRoute: HomeLayout.routeName,
      routes: {

HomeLayout.routeName:(context)=>HomeLayout(),


  },
       theme: MyThemeData.lightTheme,
      themeMode:ThemeMode.light,


    );

  }



}

