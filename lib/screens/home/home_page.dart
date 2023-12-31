import 'package:flutter/material.dart';
import 'package:food_app/domain/food_card.dart';
import 'package:food_app/provider/food_data_provider.dart';
import 'package:food_app/screens/home/search_bar.dart';
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
    return SingleChildScrollView(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const SearchBarField(onValue: null),
            const SizedBox(height: 20),
            const CategoriesList(),
            const SizedBox(height: 30),
            const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'POPULAR FOOD',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
            SizedBox(
                width: double.infinity,
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodCardsList.length,
                  itemBuilder: (context, index) =>
                      FoodCardView2(foodCard: foodCardsList[index]),
                )),
            const SizedBox(height: 40),
            const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'SPECIAL OFFERS',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
            SizedBox(
                width: double.infinity,
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodCardsList.length,
                  itemBuilder: (context, index) =>
                      FoodCardView2(foodCard: foodCardsList[index]),
                )),
          ],
        ));
  }
}

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonCategoryStyle = ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return const Color(0xFFFF7F50);
        },
      ),
    );

    return SizedBox(
        width: double.infinity,
        height: 40,
        child: Wrap(
          //scrollDirection: Axis.horizontal,
          alignment: WrapAlignment.spaceAround,
          children: [
            FilledButton.icon(
                style: buttonCategoryStyle,
                onPressed: () {},
                icon: const Icon(Icons.food_bank),
                label: const Text('Comida')),
            FilledButton.icon(
                style: buttonCategoryStyle,
                onPressed: () {},
                icon: const Icon(Icons.local_drink),
                label: const Text('Bebida')),
            FilledButton.icon(
                style: buttonCategoryStyle,
                onPressed: () {},
                icon: const Icon(Icons.food_bank_sharp),
                label: const Text('Snacks')),
          ],
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
