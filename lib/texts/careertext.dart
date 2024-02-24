import 'package:flutter/material.dart';
import 'package:leap/colors/colors.dart';
import 'package:leap/texts/texts.dart';

class CareerText extends StatelessWidget {
  const CareerText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      carReer,
      style: TextStyle(
        color: blackC,
        fontSize: 17,
        fontFamily: brFirma,
        fontWeight: FontWeight.w900,
        letterSpacing: -0.12,
      ),
    );
  }
}