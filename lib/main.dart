import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetsapp/configs/router/router.dart';
import 'package:widgetsapp/configs/theme/app_theme.dart';
import 'package:widgetsapp/presentation/providers/theme_provider.dart';

void main() {
  runApp(const ProviderScope(
    child: MainApp(),
  ));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final selectedColor = ref.watch(selectedColorProv);
    // final isDarkMode = ref.watch(isDarkModeProv);
    final AppTheme appTheme = ref.watch(appThemeProv);
    return MaterialApp.router(
      title: 'Flutter + Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
    );
  }
}
