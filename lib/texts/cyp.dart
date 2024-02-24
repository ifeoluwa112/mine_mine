import 'package:flutter/material.dart';
import 'package:leap/colors/colors.dart';
import 'package:leap/texts/texts.dart';

class CypText extends StatelessWidget {
  const CypText({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Text(
        cyP,
        style: TextStyle(
          color: blackC,
          fontSize: 24,
          fontFamily: brFirma,
          fontWeight: FontWeight.w600,
          height: 0.06,
          letterSpacing: -0.48,
        ),
      ),
    );
  }
}
