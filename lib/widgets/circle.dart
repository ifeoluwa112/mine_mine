import 'package:flutter/material.dart';

class CircleChoose extends StatelessWidget {
  const CircleChoose({super.key, this.color, this.child});

  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: ShapeDecoration(
        color: color,
        shape: const OvalBorder(),
      ),
      child: child,
    );
  }
}
