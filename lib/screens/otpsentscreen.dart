import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:leap/colors/colors.dart';
import 'package:leap/texts/texts.dart';

class OTPSentScreen extends StatelessWidget {
  const OTPSentScreen({Key? key, required this.userEmail}) : super(key: key);

  final String userEmail;


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: kToolbarHeight),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    cancel,
                    width: 32,
                    height: 32,
                  ),
                ),
              ),
              const SizedBox(
                height: 56,
              ),
              const SizedBox(
                width: double.infinity,
                height: 34,
                child: Text(
                  otpSent,
                  style: TextStyle(
                    color: blackC,
                    fontSize: 24,
                    fontFamily: brFirma,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.48,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Kindly select your email, leapV sent your login link to $userEmail. ',
                  style: const TextStyle(
                    color: dimC,
                    fontSize: 18,
                    fontFamily: brFirma,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.14,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  didNot,
                  style: TextStyle(
                    color: forL,
                    fontSize: 18,
                    fontFamily: brFirma,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.28,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
