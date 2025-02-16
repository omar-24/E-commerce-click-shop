class Product {
  int id;
  String name;
  String description;
  String price;
  int categoryId;
  String img;
  String createdAt;
  String updatedAt;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.categoryId,
    required this.img,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Product.fromjson(Map<String, dynamic> json) {
    return Product(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        categoryId: json["category_id"],
        img: json["img"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"]);
  }
}
