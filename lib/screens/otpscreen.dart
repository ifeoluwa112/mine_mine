import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:leap/colors/colors.dart';
import 'package:leap/texts/texts.dart';
import 'package:leap/widgets/otpbox.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
                  verifyE,
                  style: TextStyle(
                    color: blackC,
                    fontFamily: brFirma,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.48,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  secureLong,
                  style: TextStyle(
                    color: dimC,
                    fontSize: 14,
                    fontFamily: brFirma,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.14,
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: ScrollController(),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OtpBox(),
                        SizedBox(
                          width: 20,
                        ),
                        OtpBox(),
                        SizedBox(
                          width: 20,
                        ),
                        OtpBox(),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


