import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool _crossFadeStateShowFirst = true;

  void _crossFade() {
    setState(() {
      _crossFadeStateShowFirst = _crossFadeStateShowFirst ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: [
            AnimatedCrossFade(
                firstChild: Container(
                  color: Colors.yellow,
                  height: 100,
                  width: 100,
                ),
                secondChild: Container(
                  color: Colors.lime,
                  height: 200,
                  width: 200,
                ),
                crossFadeState: _crossFadeStateShowFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(milliseconds: 1000)),
            Positioned.fill(
                child: TextButton(
                    onPressed: () {
                      _crossFade();
                    },
                    child: const Text("Tap to\nFade Color & Size"))),
          ],
        ),
      ],
    );
  }
}
