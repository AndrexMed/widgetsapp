import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetsapp/configs/theme/app_theme.dart';

final isDarkModeProv = StateProvider<bool>(
  (ref) => false,
);

//Listado de colores Inmutables
final colorsListProv = Provider((ref) => colorList);

//int simple
final selectedColorProv = StateProvider<int>(
  (ref) => 0,
);

//Un objeto de tipo AppTheme (custom)
final appThemeProv = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

class ThemeNotifier extends StateNotifier<AppTheme> {
  //STATE = ESTADO = new AppTheme()
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int index) {
    state = state.copyWith(selectedColor: index);
  }
}
