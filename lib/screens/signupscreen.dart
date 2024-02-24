import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:leap/colors/colors.dart';
import 'package:leap/screens/otpsentscreen.dart';
import 'package:leap/texts/texts.dart';
import 'package:leap/widgets/socials.dart';
import 'package:leap/widgets/TextFields/textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isObscure = true;
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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
                  height: 55,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Expanded(
                    child: SingleChildScrollView(
                      controller: ScrollController(),
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              getStarted,
                              style: TextStyle(
                                color: blackC,
                                fontSize: 24,
                                fontFamily: brFirma,
                                fontWeight: FontWeight.w900,
                                height: -0.06,
                                letterSpacing: -0.48,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            youAre,
                            style: TextStyle(
                              color: dimC,
                              fontSize: 16,
                              fontFamily: brFirma,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.14,
                            ),
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          TextArena(
                            labelText: eMail,
                            controller: emailController,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextArena(
                            labelText: passWord,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: dimC,
                              ),
                              iconSize: 16,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            height: 54,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: ShapeDecoration(
                              color: forL,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        OTPSentScreen(userEmail: emailController.text),
                                  ),
                                );
                              },
                              child: const Text(
                                createAC,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: forUse,
                                  fontSize: 15,
                                  fontFamily: brFirma,
                                  fontWeight: FontWeight.w500,
                                  height: 0.5,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  decoration: const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 2,
                                        strokeAlign:
                                            BorderSide.strokeAlignCenter,
                                        color: idk,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                oR,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: idk2,
                                  fontSize: 13,
                                  fontFamily: gilRoy,
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                  letterSpacing: 0.20,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  decoration: const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 2,
                                        strokeAlign:
                                            BorderSide.strokeAlignCenter,
                                        color: idk,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 17.0,
                          ),
                          const Center(
                            child: Text(
                              quickSignup,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: dimC,
                                fontSize: 18,
                                fontFamily: brFirma,
                                fontWeight: FontWeight.w600,
                                height: 0.09,
                                letterSpacing: -0.32,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 26.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Socials(
                                onTap: () {},
                                child: Image.asset(
                                  faceBook,
                                  width: 27.0,
                                  height: 27.0,
                                ),
                              ),
                              const SizedBox(
                                width: 28,
                              ),
                              Socials(
                                onTap: () {},
                                child: Image.asset(
                                  linkedIn,
                                  width: 27.0,
                                  height: 27.0,
                                ),
                              ),
                              const SizedBox(
                                width: 28,
                              ),
                              Socials(
                                onTap: () {},
                                child: Image.asset(
                                  gooGle,
                                  width: 27.0,
                                  height: 27.0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: alreadyHAC,
                                  style: TextStyle(
                                    color: dimC,
                                    fontSize: 20,
                                    fontFamily: brFirma,
                                    fontWeight: FontWeight.w600,
                                    height: 0.10,
                                    letterSpacing: -0.28,
                                  ),
                                ),
                                TextSpan(
                                  text: signInSm,
                                  style: TextStyle(
                                    color: forL,
                                    fontSize: 20,
                                    fontFamily: brFirma,
                                    fontWeight: FontWeight.w600,
                                    height: 0.10,
                                    letterSpacing: -0.28,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 70,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
