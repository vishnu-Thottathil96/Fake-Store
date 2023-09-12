class Product {
  int id;
  String title;
  String price;
  String description;
  String categoy;
  String image;
  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.categoy,
    required this.image,
  });
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'].toString(),
      description: json['description'],
      categoy: json['category'],
      image: json['image'],
    );
  }
}
