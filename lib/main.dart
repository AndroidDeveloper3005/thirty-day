import 'package:flutter/material.dart';
import 'package:thirty_days_program/pages/cartPage.dart';
import 'package:thirty_days_program/pages/homePage.dart';
import 'package:thirty_days_program/pages/loginPage.dart';
import 'package:thirty_days_program/utills/routes.dart';
import 'package:thirty_days_program/widgets/theme.dart';
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
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      //themeMode: ThemeMode.light,
      darkTheme: MyTheme.darkTheme(context),
      //route
      initialRoute: MyRoutes.loginRoutes,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoutes: (context) => const Home_Pages(),
        MyRoutes.loginRoutes: (context) => const LoginPage(),
        MyRoutes.cartRoutes: (context) => const CartPage(),

      },
    );
  }
}
