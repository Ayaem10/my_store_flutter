class ProductModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  final RatingModel rating;
  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.rating});

  factory ProductModel.fromJson(jsondata) {
    return ProductModel(
        id: jsondata['id'],
        title: jsondata['title'],
        price: jsondata['price'],
        description: jsondata['description'],
        image: jsondata['image'],
        rating: RatingModel.fromJson(jsondata['rating']));
  }
}

class RatingModel {
  final dynamic rate;
  final dynamic count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsondata) {
    return RatingModel(rate: jsondata['rate'], count: jsondata['count']);
  }
}
