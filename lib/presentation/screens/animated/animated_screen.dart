import 'dart:math';
import 'package:flutter/material.dart';
class AnimatedScreen extends StatefulWidget {

  static const String name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double width = 50;
  double height = 50;
  Color color = Colors.indigo;
  double borderRadius = 10.0;


  void changeProperties() {
    final random = Random();

    setState(() {
      width = random.nextInt(300)+120;
      height = random.nextInt(300)+120;
      color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
      borderRadius = random.nextInt(100)+10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),

      ),

      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          width: width <= 0 ? 0 : width,
          height: height <= 0 ? 0 : height,
         decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius <= 0 ? 0 : borderRadius),
         ),
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        changeProperties();
      },
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}