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

      appBar: AppBar(),
       backgroundColor: MyTheme.creamColor,
       bottomNavigationBar: Container(
         color: Colors.white,
         child: ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: ["\$${catalogItem.price}".text.bold.xl3.red800.make(),
                  ElevatedButton(
                    onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor: 
                      MaterialStateProperty.all(MyTheme.darkBluishColor),
                      shape: MaterialStateProperty.all(StadiumBorder())
                      ),
                     child: "Buy".text.make()
                     ).wh(100, 50)
                  ]
                  
                ).p32(),
       ),

      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalogItem.id.toString()),
                    child: Image.network(catalogItem.image)).h32(context).p1(),
          
            Expanded(
                child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalogItem.name.text.bold.xl4.color(MyTheme.darkBluishColor).make(),
                        catalogItem.desc.text.textStyle(context.captionStyle!).xl.make(),
              5.heightBox,
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
