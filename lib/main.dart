import 'package:flutter/material.dart';
import 'package:thirty_days_program/pages/homePage.dart';
import 'package:thirty_days_program/pages/loginPage.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: const Home_Pages(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.red,
         //primaryTextTheme: GoogleFonts.latoTextTheme()
          ),
      //themeMode: ThemeMode.light,
      darkTheme: ThemeData(primarySwatch: Colors.red),
      //route
      routes: {
        "/": (context) => const LoginPage(),
        "/home": (context) => const Home_Pages(),
        "/login": (context) => const LoginPage(),
      },
    );
  }
}
