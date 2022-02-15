import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:thirty_days_program/models/catalog.dart';
import 'package:thirty_days_program/widgets/theme.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalogItem;

  const HomeDetailPage({
    Key? key,
    required this.catalogItem,
  })  : assert(catalogItem != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,

      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalogItem.price}".text.bold.xl3.red800.make(),
              ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              context.theme.buttonColor),
                          shape: MaterialStateProperty.all(StadiumBorder())),
                      child: "Add to Cart".text.make())
                  .wh(120, 50)
            ]).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalogItem.id.toString()),
                    child: Image.network(catalogItem.image))
                .h32(context)
                .p1(),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalogItem.name.text.bold.xl4
                        .color(context.accentColor)
                        .make(),
                    catalogItem.desc.text
                        .textStyle(context.captionStyle!)
                        .xl
                        .make(),
                    5.heightBox,
                    "Laborum veniam ullamco dolore et ea dolor magna velit aliqua. Labore dolor laborum nostrud excepteur. Minim qui magna pariatur id amet pariatur veniam ipsum irure elit sit. Laboris dolor sint ea ea anim aliquip ut sit excepteur esse qui excepteur. Exercitation aliquip proident aliqua dolor officia irure ad ut est fugiat pariatur nostrud sit. Consectetur magna nostrud incididunt ut magna ullamco sunt qui sunt culpa."
                    .text.textStyle(context.captionStyle!)
                    .make().p16()
                  ],
                ).py64(),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
