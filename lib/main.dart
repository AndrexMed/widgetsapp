import 'package:flutter/material.dart';
import 'package:widgetsapp/configs/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).getTheme(),
      home: const Scaffold(
        body: Center(
          child: FilledButton(child: Text('Hello Flutter'), onPressed: null),
        ),
      ),
    );
  }
}
