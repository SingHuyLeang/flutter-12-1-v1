class ProductModel {
  int id;
  String name;
  String description;
  double price;
  String image;
  bool favorite;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    this.favorite = false,
  });
}
