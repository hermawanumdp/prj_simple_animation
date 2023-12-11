import 'package:flutter/material.dart';
import 'package:prj_simple_animation/widgets/animated_container.dart';
import 'package:prj_simple_animation/widgets/animated_cross_fade.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Animation'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          AnimatedContainerWidget(),
          Divider(),
          AnimatedCrossFadeWidget(),
        ],
      ),
    );
  }
}
