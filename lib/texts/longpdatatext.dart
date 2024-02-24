import 'package:flutter/material.dart';
import 'package:leap/colors/colors.dart';
import 'package:leap/texts/texts.dart';

class LongPd extends StatelessWidget {
  const LongPd({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Text(
        letsCreate,
        style: TextStyle(
          color: dimC,
          fontSize: 14,
          fontFamily: brFirma,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.14,
        ),
      ),
    );
  }
}
