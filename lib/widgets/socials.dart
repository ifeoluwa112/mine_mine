import 'package:flutter/material.dart';
import 'package:leap/colors/colors.dart';

class Socials extends StatelessWidget {
  const Socials({super.key, this.child, this.onTap});
  final Widget? child;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          color: idk4,
          shape: OvalBorder(),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}