import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String description;
  final String imagePath;

  const SlideInfo({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

final slides = <SlideInfo>[
  SlideInfo(
    title: 'Welcome to the App',
    description: 'This is a brief introduction to the app features.',
    imagePath: 'assets/images/1.png',
  ),

  SlideInfo(
    title: 'Welcome to the App',
    description: 'This is a brief introduction to the app features.',
    imagePath: 'assets/images/2.png',
  ),

  SlideInfo(
    title: 'Welcome to the App',
    description: 'This is a brief introduction to the app features.',
    imagePath: 'assets/images/3.png',
  ),
];

class AppTutorialScreen extends StatefulWidget {
  static const String name = 'app_tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageController = PageController();
  bool isLastPage = false;

  @override
  void initState() {
    super.initState();
    // Optionally, you can add any initialization logic here
    pageController.addListener(() {
      final page = pageController.page ?? 0;
      if(!isLastPage && page >= (slides.length - 1.5)) {
        setState(() {
          isLastPage = true;
        });
      } 
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            physics: const BouncingScrollPhysics(),
            controller: pageController,
            children:
                slides
                    .map(
                      (slideData) => _Slide(
                        title: slideData.title,
                        description: slideData.description,
                        imagePath: slideData.imagePath,
                      ),
                    )
                    .toList(),
          ),
          Positioned(
            top: 30,
            right: 0,
            child: TextButton(
              onPressed: () {
                // Navigate to the home screen or close the tutorial
                Navigator.of(context).pop();
              },
              child: const Text('Salir'),
            ),
          ),

          isLastPage ? Positioned(
            
            bottom: 30,
            right: 30,
            child: FilledButton(
              onPressed: () {
                // Navigate to the home screen or close the tutorial
                Navigator.of(context).pop();
              },
              child: const Text('Comenzar'),
            ),
          ): const SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const _Slide({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final descriptionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imagePath)),
            Text(title, style: titleStyle),
            const SizedBox(height: 10),
            Text(description, style: descriptionStyle),
          ],
        ),
      ),
    );
  }
}
