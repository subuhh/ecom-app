import 'package:ecomapp/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(

      //Todo: Add Widget BINDING
      //Todo: init local Storage
      //Todo: Await Native Splash
      //Todo: Initialize Firebase
      //Todo: Initialize Authentication

      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme= ThemeData(
        useMaterial3: true,
        fontFamily: 'Poppins',
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(),
      ),
      darkTheme: TAppTheme.darkTheme,
    );
  }
}
