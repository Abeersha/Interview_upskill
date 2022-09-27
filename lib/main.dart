import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:interview_upskill/Service/local.storage.dart';
import 'package:interview_upskill/view/home.posts.dart';
import 'package:interview_upskill/view/homepage.dart';
import 'package:interview_upskill/view/splash.screen.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? token = GetLocalStorage.getUserInformation("token");
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Interview_Upskill',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: token == null ? SplashScreen() : HomePage(),
    );
  }
}
