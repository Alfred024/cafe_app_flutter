import 'package:flutter/material.dart';

class SearchBarField extends StatelessWidget {
  final ValueChanged<String>? onValue;
  const SearchBarField({super.key, this.onValue});

  @override
  Widget build(BuildContext context) {
    //final colors = Theme.of(context).colorScheme;
    final textController = TextEditingController();
    final textFieldDecoration = InputDecoration(
      //enabledBorder: ,
      filled: true,
      fillColor: Colors.transparent,
      border: InputBorder.none,
      hintText: '¿Qué vas a ordenar hoy?',
      hintStyle: const TextStyle(color: Colors.grey),
      suffixIcon: IconButton(
        //padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
        onPressed: () {},
        icon: const Icon(Icons.search),
        style: const ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(Color.fromARGB(255, 245, 176, 150)),
          iconColor: MaterialStatePropertyAll(Colors.white),
        ),
      ),
      // suffixIcon: IconButton(
      //     onPressed: () {
      //       final fieldValue = textController.value.text;
      //       textController.clear();
      //       //onValue(fieldValue);
      //     },
      //     icon: Container(
      //       color: const Color.fromARGB(255, 245, 176, 150),
      //       child: const Icon(Icons.search, color: Colors.black),
      //     ))
    );

    return DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.black12),
        child: TextField(
          decoration: textFieldDecoration,
          controller: textController,
        ));
  }
}
