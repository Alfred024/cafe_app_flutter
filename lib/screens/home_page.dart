import 'package:flutter/material.dart';
import 'package:food_app/domain/food_card.dart';
import 'package:food_app/provider/food_data_provider.dart';
import 'package:food_app/widgets/search_bar.dart';
import 'package:provider/provider.dart';

//PageView.builder: Creates a scrollable list that works page by page using widgets that are created on demand.
//PageView.custom: Function with a list of children defined

//Creo qu eets clase tendría que ser Statefull
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final foodDataProvider = context.watch<FoodDataProvider>();
    final foodCardsList = foodDataProvider.foodCardsList;

    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 15),
      child: Column(mainAxisSize: MainAxisSize.max, children: [
        const SearchBarField(onValue: null),
        FoodCardView2(foodCard: foodCardsList[3]),
        // ListView(
        //   physics: const BouncingScrollPhysics(),
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     FoodCardView2(foodCard: foodCardsList[0]),
        //     FoodCardView2(foodCard: foodCardsList[1]),
        //     FoodCardView2(foodCard: foodCardsList[2]),
        //     FoodCardView2(foodCard: foodCardsList[3]),
        //     FoodCardView2(foodCard: foodCardsList[4]),
        //   ],
        // ),
      ]),
    );
  }
}

class FoodCardView2 extends StatelessWidget {
  final FoodCard foodCard;
  const FoodCardView2({super.key, required this.foodCard});

  @override
  Widget build(BuildContext context) {
    final cardDecoration = BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: AssetImage(foodCard.imgUrl), fit: BoxFit.cover));

    return Container(
      width: 160,
      height: 160,
      //padding: const EdgeInsets.all(10),
      margin: const EdgeInsetsDirectional.all(10),
      decoration: cardDecoration,
      child: Stack(children: [
        const CardBackgroundGradient(),
        Positioned(
            bottom: 20,
            left: 10,
            child: Text(
              foodCard.title,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            )),
        Positioned(
            bottom: 0,
            left: 10,
            child: Text(
              '\$${foodCard.price}',
              style: const TextStyle(fontSize: 16, color: Colors.white),
            )),
      ]),
    );
  }
}

class CardBackgroundGradient extends StatelessWidget {
  const CardBackgroundGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned.fill(
        child: DecoratedBox(
      decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(20),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black87],
              stops: [0.5, 1.0],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
    ));
  }
}
