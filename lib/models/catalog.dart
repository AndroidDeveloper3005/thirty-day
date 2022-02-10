class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Xiaomi Redmi 9",
        desc:
            "Android 10, MIUI 12, 6.53 inc IPS LCD, expandable memory 256 GB, RAM 6 GB, ROM 128 GB, Battery 5000mAh ,first arrival(December-2021)",
        price: " 15999TK",
        image: "https://m.media-amazon.com/images/I/51oT5k+XRrS._AC_SX522_.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String price;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.image});
}
