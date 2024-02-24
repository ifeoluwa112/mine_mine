import 'package:flutter/material.dart';
import 'package:leap/colors/colors.dart';
import 'package:leap/texts/texts.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 54,
      decoration: ShapeDecoration(
        color: forL,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: const Center(
        child: Text(
          contiNue,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: forUse,
            fontSize: 15,
            fontFamily: brFirma,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
