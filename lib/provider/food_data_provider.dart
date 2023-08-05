import 'package:flutter/widgets.dart';
import 'package:food_app/domain/food_card.dart';
import 'package:food_app/model/food_cart_model.dart';
import 'package:food_app/shared/cards_data_provider.dart';

class FoodDataProvider extends ChangeNotifier {
  bool loadingFood = true;
  List<FoodCard> foodCardsList = [];

  Future<void> loadFoodCards() async {
    await Future.delayed(const Duration(seconds: 2));
    List<FoodCard> newfoodCardsList = apiFoodData
        .map((item) => FoodCardModel.fromJson(item).toFoodCardEntity())
        .toList();
    foodCardsList.addAll(newfoodCardsList);
    loadingFood = false;
    notifyListeners();
  }
}
