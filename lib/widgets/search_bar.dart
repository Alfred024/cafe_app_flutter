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
        fillColor: const Color.fromARGB(255, 245, 176, 150),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 30)),
        hintText: '¿Qué vas a ordenar hoy?',
        hintStyle: const TextStyle(color: Colors.white),
        suffixIcon: IconButton(
            onPressed: () {
              final fieldValue = textController.value.text;
              textController.clear();
              //onValue(fieldValue);
            },
            icon: const Icon(Icons.search, color: Colors.white)));

    return TextField(
      decoration: textFieldDecoration,
      controller: textController,
    );
  }
}
