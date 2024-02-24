import 'package:flutter/material.dart';
import 'package:leap/colors/colors.dart';

class CheckCircle extends StatelessWidget {
  const CheckCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: const ShapeDecoration(
        color: forL,
        shape: OvalBorder(),
      ),
      child: Center(
        child: Image.asset(
          'assets/images/tick.png',
          color: forUse,
        ),
      ),
    );
  }
}
