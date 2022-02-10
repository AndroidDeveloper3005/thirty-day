import 'package:flutter/material.dart';
import 'package:thirty_days_program/widgets/drawer.dart';

// ignore: camel_case_types
class Home_Pages extends StatelessWidget {
  const Home_Pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 20;
    var name = "Flutter";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Center(
          child: Text("$days Days Of $name???")
          ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
