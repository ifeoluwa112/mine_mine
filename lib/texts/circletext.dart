import 'package:flutter/material.dart';
import 'package:leap/colors/colors.dart';
import 'package:leap/texts/texts.dart';

class CircleText extends StatelessWidget {
  const CircleText({super.key, required this.number});

  final String? number;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        number!,
        style: const TextStyle(
          color: forUse,
          fontSize: 15,
          fontFamily: brFirma,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.10,
        ),
      ),
    );
  }
}
