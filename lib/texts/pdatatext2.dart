import 'package:flutter/material.dart';
import 'package:leap/colors/colors.dart';
import 'package:leap/texts/texts.dart';

class PDataText2 extends StatelessWidget {
  const PDataText2({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 10.96,
      child: Text(
        pDataCap,
        style: TextStyle(
          color: forL,
          fontSize: 15,
          fontFamily: brFirma,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.10,
          height: 0.13,
        ),
      ),
    );
  }
}
