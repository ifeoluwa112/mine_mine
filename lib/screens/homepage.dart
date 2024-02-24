import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:leap/colors/colors.dart';
import 'package:leap/screens/signupscreen.dart';
import 'package:leap/texts/texts.dart';
import 'package:leap/widgets/swipes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int _currentIndex = 0;
  final PageController _pageController = PageController();
  List<String> imageList = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
  ];
  

  List<String> textList = [
    'Transform your career with LeapV today',
    'Access and Learn from the best Mentors',
    'For personal and professional growth',
    'Valuable expert-led mentoring workshops',
  ];

  List<String> textList2 = [
    'What you learn here will help grow your career and discover ways to thrive',
    'Build confidence as a leader, grow your network, and define your legacy.',
    'What you learn here will help grow your career and discover ways to thrive',
    'Build confidence as a leader, grow your network, and define your legacy.',
  ];

  @override
  void initState() {
    super.initState();
    _startPageAutoChange();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _startPageAutoChange() {
    Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentIndex < imageList.length - 1) {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        _pageController.jumpToPage(0);
      }
    });
  }

  Swipe swipes = Swipe();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            // Swipe from left to right
            swipes.onSwipeRight();
          } else if (details.primaryVelocity! < 0) {
            // Swipe from right to left
            swipes.onSwipeLeft();
          }
        },
        child: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(), // Disable swipe gesture for PageView
          children: List.generate(imageList.length, (index) => buildPage(index)),
        ),
      ),
    );
  }

  Widget buildPage(int index) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageList[index]),
          fit: BoxFit.cover, 
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: kToolbarHeight),
            if (index == 0)
              const Padding(
                padding: EdgeInsets.only(top: 35.5),
                child: Text(
                  skip,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: brFirma,
                    fontWeight: FontWeight.w400,
                    color: forUse,
                  ),
                ),
              )
            else
              Padding(
                padding: const EdgeInsets.only(top: 19),
                child: Center(
                  child: Image.asset(
                    leapvFrame,
                    width: 99,
                    height: 40,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            const SizedBox(height: 150.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    textList[index], // Use dynamic text
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: forUse,
                      fontSize: 32.0,
                      fontFamily: brFirma,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.64,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Opacity(
                    opacity: 1.0,
                    child: Text(
                      textAlign: TextAlign.center,
                      textList2[index],
                      style: const TextStyle(
                        fontSize: 14,
                        color: forUse,
                        fontWeight: FontWeight.w400,
                        fontFamily:brFirma,
                        letterSpacing: -0.14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 42,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50.0,
                        height: 2.0,
                        color: _currentIndex == 0 ? forUse : altT,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Container(
                        width: 50.0,
                        height: 2.0,
                        color: _currentIndex == 1 ? forUse : altT,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Container(
                        width: 50.0,
                        height: 2.0,
                        color: _currentIndex == 2 ? forUse  : altT,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Container(
                        width: 50.0,
                        height: 2.0,
                        color: _currentIndex == 3 ? forUse : altT,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                    ),
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
                              builder: (context) => const SignUpScreen()),
                        );
                      },
                      child: const Center(
                        child: Text(
                          createAC,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: forUse,
                            fontSize: 15,
                            fontFamily: brFirma,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: forUse),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        signIn,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: forUse,
                          fontSize: 15,
                          fontFamily: brFirma,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
