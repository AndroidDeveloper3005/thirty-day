import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:thirty_days_program/models/catalog.dart';
import 'package:thirty_days_program/widgets/ItemWidget.dart';
import 'package:thirty_days_program/widgets/drawer.dart';

class Home_Pages extends StatefulWidget {
  const Home_Pages({Key? key}) : super(key: key);

  @override
  State<Home_Pages> createState() => _Home_PagesState();
}

class _Home_PagesState extends State<Home_Pages> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJSON = await rootBundle.loadString("assets/files/products.json");
    var decodedData = jsonDecode(catalogJSON);
    var productData = decodedData["products"];
    //print(decodedData);
  }

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
            items: CatalogModel.items[index],
          );
        },
      ),
      drawer: const MyDrawer(),
    );
  }
}
