class ProductModel {
  final String title;
  final String description;
  final String image;
  final dynamic price;
  final RatingModel rating;

  ProductModel({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.rating,
  });
  factory ProductModel.fromJson(json) {
    return ProductModel(
      title: json['title'],
      description: json['description'],
      image: json['image'],
      price: json['price'] ?? 0.0,
      rating: RatingModel.fromJson(json['rating']),
    );
  }
}

class RatingModel {
  final dynamic rate;
  final int count;

  RatingModel(this.rate, this.count);

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(
      json['rate'],
      json['count'],
    );
  }
}
