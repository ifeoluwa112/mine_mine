import 'package:flutter/material.dart';

class Swipe {
  final int _currentIndex = 0;
  final PageController _pageController = PageController();

  List<String> imageList = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
  ];

  void onSwipeLeft() {
    if (_currentIndex < imageList.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      _pageController.jumpToPage(0);
    }
  }

  void onSwipeRight() {
    if (_currentIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      _pageController.jumpToPage(imageList.length - 1);
    }
  }
}
