import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_upskill/view/splash.screen.dart';
import 'package:get/get_connect/http/src/multipart/form_data.dart' as fd;

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Interview_Upskill',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  SplashScreen(),
      );
}
