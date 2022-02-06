import 'package:flutter/material.dart';

class Home_Pages extends StatelessWidget {
  const Home_Pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 20;
    var name = "Flutter";
    return MaterialApp(
        home: Material(
      child: Center(
          child: Text("$days Days Of $name???")
          ),
    ));
  }
}
