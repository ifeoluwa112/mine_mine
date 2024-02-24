import 'package:flutter/material.dart';
import 'package:leap/colors/colors.dart';

class OtpBox extends StatelessWidget {
  const OtpBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: ShapeDecoration(
        color: forUse,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 5,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: idk3,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: const TextField(
        maxLength: 1, // Set the length of OTP input
        textAlign: TextAlign.center, // Center align the input
        keyboardType: TextInputType.number, // Set the keyboard type to number
        style: TextStyle(
          fontSize: 30, // Set the font size for OTP input
        ),
        decoration: InputDecoration(
          counterText: '', // Remove the character count
          contentPadding: EdgeInsets.all(5), // Remove internal padding
          enabledBorder: InputBorder.none, // Remove the border when not focused
          focusedBorder: InputBorder.none, // Remove the border when focused
        ),
      ),
    );
  }
}