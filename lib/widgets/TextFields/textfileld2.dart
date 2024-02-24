import 'package:flutter/material.dart';
import 'package:leap/colors/colors.dart';
import 'package:leap/texts/texts.dart';

// ignore: must_be_immutable
class TextArena2 extends StatelessWidget {
  TextArena2({
    Key? key,
    this.suffixIcon,
    this.labelText,
    this.readOnly,
    this.controller,
  }) : super(key: key);

  final Widget? suffixIcon;
  final String? labelText;
  bool? readOnly = false;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      color: forUse,
      child: TextFormField(
        controller: controller,
        readOnly: readOnly ?? false,
        autofocus: false,
        style: const TextStyle(
          color: blackC,
          fontSize: 16,
          fontFamily: brFirma,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.16,
        ),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
          filled: true,
          fillColor: forUse,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 3,
              color: forL,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 3,
              color: idk3,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          labelText: labelText,
          suffixIcon: suffixIcon,
          labelStyle: controller!.text.isEmpty
              ? const TextStyle(
                  color: dimC,
                  fontSize: 12,
                  fontFamily: brFirma,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.50,
                )
              : const TextStyle(
                  color: blackC,
                  fontSize: 12,
                  fontFamily: brFirma,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.50,
                ),
        ),
      ),
    );
  }
}
