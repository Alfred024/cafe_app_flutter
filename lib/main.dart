import 'package:flutter/material.dart';
import 'package:food_app/config/theme/app_theme.dart';
import 'package:food_app/provider/food_data_provider.dart';
import 'package:food_app/screens/pages_exports.dart';
//import 'package:food_app/widgets/navbar_bottom.dart';
import 'package:provider/provider.dart';
//import 'package:food_app/widgets/form_demo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int indexScreen = 0;
  final List<Widget> userScreens = <Widget>[
    const HomePage(),
    const ShoppingCart(),
    const ProfilePage(),
  ];

  final navbarStyle = const BoxDecoration(
      color: Color(0xFFFF7F50),
      borderRadius: BorderRadius.all(Radius.circular(20)));

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
        body: MultiProvider(
            // the '_'  (underscore) symbol is used as a parameter name to indicate that the parameter is not used or referenced in the function body (we can repalce it for the context parameter) on the provider function
            providers: [
              ChangeNotifierProvider(
                  create: (context) => FoodDataProvider()..loadFoodCards())
            ],
            child: userScreens.elementAt(indexScreen)),
        bottomNavigationBar: Container(
            margin: const EdgeInsets.all(10),
            decoration: navbarStyle,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: BottomNavigationBar(
                  onTap: (index) => setState(() {
                    indexScreen = index;
                  }),
                  currentIndex: indexScreen,
                  unselectedItemColor: Colors.white,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                      label: 'Cart',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.account_box,
                        color: Colors.white,
                      ),
                      label: 'Profile',
                    ),
                  ],
                ))),
      ),
    );
  }
}
