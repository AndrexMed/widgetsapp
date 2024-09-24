import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetsapp/presentation/providers/theme_provider.dart';

class ThemeChangeScreen extends ConsumerWidget {
  static const name = 'theme_change';
  const ThemeChangeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final isDarkMode = ref.watch(isDarkModeProv);
    final isDarkMode = ref.watch(appThemeProv).isDarkMode;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Change Screen'),
        actions: [
          IconButton(
              onPressed: () {
                // ref.read(isDarkModeProv.notifier).update((state) => !state);
                ref.read(appThemeProv.notifier).toggleDarkMode();
              },
              icon: isDarkMode
                  ? const Icon(Icons.dark_mode)
                  : const Icon(Icons.light_mode))
        ],
      ),
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorsListProv);
    // final selectedColorIndex = ref.watch(selectedColorProv);
    final selectedColorIndex = ref.watch(appThemeProv).selectedColor;

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];
        return RadioListTile(
            title: Text('Este Color', style: TextStyle(color: color)),
            subtitle:
                Text('Color ${index + 1}', style: TextStyle(color: color)),
            activeColor: color,
            value: index,
            groupValue: selectedColorIndex,
            onChanged: (value) {
              // ref
              //     .read(selectedColorProv.notifier)
              //     .update((state) => value as int);

              //Con StateNotifier
              ref.read(appThemeProv.notifier).changeColorIndex(value as int);
            });
      },
    );
  }
}
