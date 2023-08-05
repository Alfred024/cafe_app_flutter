import 'package:food_app/domain/food_card.dart';

class FoodCartModel {
  final String title;
  final String imgUrl;
  final int price;
  final String description;

  FoodCartModel(
      {required this.title,
      required this.imgUrl,
      required this.price,
      required this.description});

  //factory methods: return constructor that doesn’t always create a new instance of its class (might return an instance from a cache).
  factory FoodCartModel.fromJson(Map<String, dynamic> json) {
    return FoodCartModel(
        title: json['title'],
        imgUrl: json['imgUrl'],
        price: json['price'],
        description: json['description']);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'imgUrl': imgUrl,
      'price': price,
      'description': description,
    };
  }

  FoodCart toFoodCardEntity() {
    return FoodCart(
        title: title, imgUrl: imgUrl, price: price, description: description);
  }
}
