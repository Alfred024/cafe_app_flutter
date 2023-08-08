//Pages/Screens
import 'package:food_app/screens/pages_exports.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    //name: HomePage(),
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: '/',
    //name: HomePage(),
    builder: (context, state) => const ShoppingCart(),
  ),
  GoRoute(
    path: '/',
    //name: HomePage(),
    builder: (context, state) => const ProfilePage(),
  ),
]);
