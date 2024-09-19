import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgetsapp/configs/router/router.dart';

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
      body: Stack(
        children: [
          PageView(
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((data) => _Slide(
                      title: data.title,
                      caption: data.caption,
                      imageUrl: data.imageUrl,
                    ))
                .toList(),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: TextButton(
              onPressed: () => context.pop(),
              child: const Text('Skip'),
            ),
          ),
        ],
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
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(imageUrl),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              caption,
              style: captionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
