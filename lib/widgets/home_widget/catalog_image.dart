import 'package:flutter/material.dart';
import 'package:thirty_days_program/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';


class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p3
        .color(context.canvasColor)
        .make()
        .p8()
        .w24(context);
  }
}