import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_application/SharedFiles/Styles/my-theme.dart';
import 'package:todo_application/home-Layout/home-layout.dart';

import 'firebase_options.dart';



void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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

