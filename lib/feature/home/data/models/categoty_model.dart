class ProductCategory{
  int id;
  String name;
  String description;
  String img;
  DateTime createdAt;
  DateTime updatedAt;

  ProductCategory({
    required this.id,
    required this.name,
    required this.description,
    required this.img,
    required this.createdAt,
    required this.updatedAt,
  });


  factory ProductCategory.fromJson(Map<String, dynamic> json) {
    return ProductCategory(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      img: json['img'] as String,
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
