import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final inputsDecoration = InputDecoration(
        prefix: const Text('Texto dinámico'),
        prefixIcon: const Icon(Icons.email),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey)));

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(right: 40, left: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: inputsDecoration,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: inputsDecoration,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: inputsDecoration,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: inputsDecoration,
            ),
            const SizedBox(
              height: 10,
            ),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.app_registration),
                label: const Text('Guardar datos'))
          ],
        ),
      ),
    );
  }
}
