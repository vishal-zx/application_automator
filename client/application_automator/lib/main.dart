import 'package:application_automator/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch:const MaterialColor(
          0xFF000000, {
            50:  Color(0x00000000),
            100: Color(0x00000000),
            200: Color(0x00000000),
            300: Color(0x00000000),
            400: Color(0x00000000),
            500: Color(0x00000000),
            600: Color(0x00000000),
            700: Color(0x00000000),
            800: Color(0x00000000),
            900: Color(0x00000000),
          }
        ),
        fontFamily: 'Avenir',
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
