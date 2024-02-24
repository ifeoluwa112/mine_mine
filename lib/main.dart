import 'package:flutter/material.dart';
import 'package:leap/screens/career.dart';
import 'package:leap/screens/homepage.dart';
import 'package:leap/screens/otpscreen.dart';
import 'package:leap/screens/otpsentscreen.dart';
import 'package:leap/screens/personaldata1.dart';
import 'package:leap/screens/signedup.dart';
import 'package:leap/screens/signupscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Career(),
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.white.withOpacity(0.4),
      ),
    );
  }
}
