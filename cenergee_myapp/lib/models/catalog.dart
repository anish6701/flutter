class CatalogModel {
  static final items = [
    // Item(id: 1,name: "Vivo v11 pro",desc: "Android phone",price: 999,color: "#303505a",imageurl:"https://cdn.shopify.com/s/files/1/1684/4603/products/VivoV11pro_Starry-Night-Black.png?v=1573911444")
    Item(1, "Vivo v11 pro", "Android Phone", 999, "#303505a",
        "https://cdn.shopify.com/s/files/1/1684/4603/products/VivoV11pro_Starry-Night-Black.png?v=1573911444")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageurl;

  Item(this.id, this.name, this.desc, this.price, this.color, this.imageurl);
}
