import 'package:flutter/material.dart';
import 'package:food_app/config/theme/app_theme.dart';
import 'package:food_app/widgets/appbar.dart';
import 'package:food_app/widgets/navbar_bottom.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme(),
      title: 'Food App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFF7F50),
          title: const Text('Welcome User', style: TextStyle()),
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn0.iconfinder.com/data/icons/profile-lipo-glyph/64/profile_user_character-29-512.png'),
                )),
          ],
        ),
        body: const Center(
          child: Text(
            'App!',
            style: TextStyle(),
          ),
        ),
        bottomNavigationBar: const NavbarBottom(),
      ),
    );
  }
}
