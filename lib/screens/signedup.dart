import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:leap/colors/colors.dart';
import 'package:leap/texts/texts.dart';

class SignedUp extends StatelessWidget {
  const SignedUp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      backgroundColor: backG,
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              controller: ScrollController(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: kToolbarHeight),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      leapvFrame,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: double.infinity,
                    height: 488,
                    decoration: ShapeDecoration(
                      color: forUse,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 23, vertical: 59),
                      child: Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          controller: ScrollController(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 108, right: 102, top: 156),
                                child: Image.asset(hurRay),
                              ),
                              const SizedBox(
                                height: 102,
                              ),
                              const SizedBox(
                                width: double.infinity,
                                child: Text(
                                  welcomeTo,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: blackC,
                                    fontSize: 32,
                                    fontFamily: brFirma,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: -0.64,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const SizedBox(
                                width: 293.38,
                                child: Opacity(
                                  opacity: 0.80,
                                  child: Text(
                                    compYour,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: dimC,
                                      fontSize: 14,
                                      fontFamily: brFirma,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.14,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: double.infinity,
                    height: 54,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: forL,
                    ),
                    child: const Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        exPlore,
                        style: TextStyle(
                          color: forUse,
                          fontSize: 15,
                          fontFamily: brFirma,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 29,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 24,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
