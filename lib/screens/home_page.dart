import 'package:flutter/material.dart';
import 'package:food_app/widgets/search_bar.dart';

//PageView.builder: Creates a scrollable list that works page by page using widgets that are created on demand.
//PageView.custom: Function with a list of children defined

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 15),
      //alignment: Alignment.topCenter,
      child: Column(children: [
        const SearchBarField(onValue: null),
        ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => {},
        ),
        ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => {},
        ),
      ]),
    );
  }
}
