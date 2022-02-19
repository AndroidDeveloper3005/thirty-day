import 'package:thirty_days_program/models/catalog.dart';

class CartModel {
  // catalog field
  late CatalogModel _catalog;

// Collection of IDs - store Ids of each item
  final List<int> _itemIds = [];

  // Get Catalog
  CatalogModel get catalog => _catalog;

  //set catacolg
  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //get items in the cart
  List<Item> get items => _itemIds.map((id) => CatalogModel.getById(id)).toList();
  
  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add Item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove Item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }



}
