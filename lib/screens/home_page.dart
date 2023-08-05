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
      //alignment: Alignment.topCenter,
      //alignment: Alignment.bottomCenter,
      child: Column(children: [
        const SearchBarField(onValue: null),
        FoodCardView1(
          foodCard: foodCardsList[0],
        ),
        FoodCardView2(
          foodCard: foodCardsList[1],
        ),
        // ListView.builder(
        //   physics: const BouncingScrollPhysics(),
        //   scrollDirection: Axis.horizontal,
        //   itemBuilder: (context, index) => (FoodCardView1(
        //     foodCard: foodCardsList[index],
        //   )),
        // ),
        // ListView.builder(
        //   scrollDirection: Axis.vertical,
        //   itemBuilder: (context, index) =>
        //       (const Text('Yo seré otra cosa jsjs')),
        // ),
      ]),
    );
  }
}

// class FoodCardView1 extends StatelessWidget {
  final FoodCard foodCard;
  const FoodCardView1({super.key, required this.foodCard});

  @override
  Widget build(BuildContext context) {
    final cardDecoration = BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: AssetImage(foodCard.imgUrl), fit: BoxFit.cover));

    return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsetsDirectional.all(10),
        width: 160,
        height: 160,
        decoration: cardDecoration,
        child: Positioned(
          child: Column(
            children: [
              Text(
                foodCard.title,
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                '${foodCard.price}',
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ));
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
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsetsDirectional.all(10),
      decoration: cardDecoration,
      child: Stack(children: [
        Positioned(
            bottom: 20,
            left: 0,
            child: Text(
              foodCard.title,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            )),
        // const SizedBox(
        //   height: 20,
        // ),
        Positioned(
            bottom: 0,
            left: 0,
            child: Text(
              '${foodCard.price}',
              style: const TextStyle(fontSize: 16, color: Colors.white),
            )),
      ]),
    );
  }
}
