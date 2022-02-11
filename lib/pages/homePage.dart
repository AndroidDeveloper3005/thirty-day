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
    await Future.delayed(const Duration(seconds: 3));

    var catalogJSON = await rootBundle.loadString("assets/files/products.json");
    var decodedData = jsonDecode(catalogJSON);
    var productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return GridTile(child: Image.network(item.image));
                },
                itemCount: CatalogModel.items.length,
              )
            : const Center(
                child: CircularProgressIndicator(color: Colors.red),
              ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
