import 'package:flutter/material.dart';
import 'package:thirty_days_program/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item items;

  const ItemWidget({Key? key, required this.items})
      : assert(items != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        onTap: () {
          print("${items.name} pressed..");
        },
        leading: Image.network(items.image),
        title: Text(items.name),
        subtitle: Text(items.desc),
        trailing: Text(
          "\$${items.price}",
          textScaleFactor: 1.5,
          style: const TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
