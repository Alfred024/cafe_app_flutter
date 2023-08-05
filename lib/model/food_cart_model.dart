import 'package:food_app/domain/food_card.dart';

class FoodCardModel {
  final String title;
  final String imgUrl;
  final int price;
  final String description;

  FoodCardModel(
      {required this.title,
      required this.imgUrl,
      required this.price,
      required this.description});

  //factory methods: return constructor that doesn’t always create a new instance of its class (might return an instance from a cache).
  factory FoodCardModel.fromJson(Map<String, dynamic> json) {
    return FoodCardModel(
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

  FoodCard toFoodCardEntity() {
    return FoodCard(
        title: title, imgUrl: imgUrl, price: price, description: description);
  }
}
