import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thirty_days_program/models/cart.dart';
import 'package:thirty_days_program/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatefulWidget {
  final Item catalog;
  const AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool _isInCart = _cart.items.contains(widget.catalog) ??false;

    return ElevatedButton(
        onPressed: () {
          
          if (!_isInCart) {
            _isInCart = _isInCart.toggle();
            final _catalog = CatalogModel();
            _cart.catalog = _catalog;
            _cart.add(widget.catalog);

            setState(() {});
          }
        },
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(context.theme.buttonColor),
            shape: MaterialStateProperty.all(const StadiumBorder())),
        child: _isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus));
  }
}
