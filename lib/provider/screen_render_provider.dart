import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/screens/pages_exports.dart';

//En vez de tener un StateNotifier, creo que la mejor opción es un sólo StateProvider
final screenNotifierPorvider =
    StateNotifierProvider<ScreenNotifier, Screen>((ref) => ScreenNotifier());

class ScreenNotifier extends StateNotifier<Screen> {
  ScreenNotifier() : super(Screen());

  void changeScreen(int index) {
    state = state.copy(screenSelectedIndex: index);
  }
}
