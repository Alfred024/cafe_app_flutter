import 'package:flutter/material.dart';
import 'package:food_app/widgets/navbar_bottom.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        appBar: null,
        body: Center(
          child: Text('Hello World!'),
        ),
        bottomNavigationBar: NavbarBottom(),
      ),
    );
  }
}
