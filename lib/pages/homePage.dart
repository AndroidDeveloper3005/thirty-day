import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:thirty_days_program/models/catalog.dart';
import 'package:thirty_days_program/utills/routes.dart';
import 'package:thirty_days_program/widgets/drawer.dart';
import 'package:thirty_days_program/widgets/home_widget/catalog_header.dart';
import 'package:thirty_days_program/widgets/home_widget/catalog_list.dart';
import 'package:thirty_days_program/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

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
      backgroundColor: MyTheme.creamColor,
      floatingActionButton: FloatingActionButton(onPressed: () =>
       Navigator.pushNamed(context, MyRoutes.cartRoutes),
       
      child: Icon(CupertinoIcons.cart),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                const CatalogList().py16().expand()
              else
                const CircularProgressIndicator( color: Colors.red).centered().py16().expand(),
                
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}



