import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_upskill/constants/global_colors.dart';
import 'package:interview_upskill/view/home.posts.dart';
import 'package:interview_upskill/view/login.view.dart';
import 'package:interview_upskill/view/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.to( LoginView());
    });
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: const Center(
        child: Text(
          'Interview Upskill',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
