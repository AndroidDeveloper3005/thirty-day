import 'package:flutter/material.dart';
import 'package:thirty_days_program/models/catalog.dart';
import 'package:thirty_days_program/widgets/ItemWidget.dart';
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
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            items:  CatalogModel.items[index],
          );
        },
      ),
      drawer: const MyDrawer(),
    );
  }
}
