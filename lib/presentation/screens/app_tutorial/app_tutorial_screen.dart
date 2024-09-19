import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  const SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  const SlideInfo(
      'Welcome to Flutter',
      'Flutter is Google\'s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
      'assets/images/1.png'),
  const SlideInfo(
      'Powerful',
      'Flutter is Google\'s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
      'assets/images/2.png'),
  const SlideInfo(
      'Fast',
      'Flutter is Google\'s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
      'assets/images/3.png'),
  const SlideInfo(
      'Open Source',
      'Flutter is Google\'s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
      'assets/images/4.png'),
];

class AppTutorialScreen extends StatelessWidget {
  static const name = 'app_tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Tutorial Screen'),
      ),
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides
            .map((data) => _Slide(
                  title: data.title,
                  caption: data.caption,
                  imageUrl: data.imageUrl,
                ))
            .toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
