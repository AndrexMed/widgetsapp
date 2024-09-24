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
