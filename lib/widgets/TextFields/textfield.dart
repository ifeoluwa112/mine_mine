import 'package:flutter/material.dart';
import 'package:leap/colors/colors.dart';
import 'package:leap/texts/texts.dart';

class TextArena extends StatelessWidget {
  const TextArena({super.key, this.labelText, this.suffixIcon, this.controller});

  final String? labelText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      autofocus: true,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        filled: true,
        fillColor: forUse,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 3,
            color: idk3,
          ),
          borderRadius: BorderRadius.circular(7),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 3,
            color: idk3,
          ),
          borderRadius: BorderRadius.circular(7),
        ),
        suffixIcon: suffixIcon,
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Color.fromARGB(255, 111, 115, 117),
          fontSize: 20,
          fontFamily: brFirma,
          fontWeight: FontWeight.w400,
          height: 0.06,
          letterSpacing: -0.16,
        ),
        alignLabelWithHint: true,
      ),
    );
  }
}