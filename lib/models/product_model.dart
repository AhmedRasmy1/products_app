class ProductModel {
  final String title;
  final String description;
  final String image;
  final double price;
  final RatingModel rating;

  ProductModel({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.rating,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: json['title'],
      description: json['description'],
      image: json['image'],
      price: json['price'],
      rating: RatingModel.fromJson(json['rating']),
    );
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel(this.rate, this.count);

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(
      json['rate'],
      json['count'],
    );
  }
}
