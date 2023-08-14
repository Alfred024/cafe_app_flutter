import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/config/theme/app_theme.dart';
import 'package:food_app/provider/screen_render_provider.dart';
import 'package:food_app/screens/pages_exports.dart';
import 'package:food_app/screens/sign_in/sign_in.dart';
import 'package:food_app/widgets/navbar_bottom.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  final navbarStyle = const BoxDecoration(
      color: Color(0xFFFF7F50),
      borderRadius: BorderRadius.all(Radius.circular(20)));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Screen userScreen = ref.watch(screenNotifierPorvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme(),
      title: 'Food App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFF7F50),
          title:
              const Text('Welcome User', style: TextStyle(color: Colors.white)),
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn0.iconfinder.com/data/icons/profile-lipo-glyph/64/profile_user_character-29-512.png'),
                )),
          ],
        ),
        //body: userScreen.getScreen(),
        body: const SignIn(),
        bottomNavigationBar: const NavbarBottom(),
      ),
    );
  }
}
