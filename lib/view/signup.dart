import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:interview_upskill/constants/constants.dart';
import 'package:interview_upskill/view/button.global.dart';
import 'package:interview_upskill/view/home.posts.dart';
import 'package:interview_upskill/view/homepage.dart';
import 'package:interview_upskill/view/messages.dart';
import 'package:interview_upskill/view/text.form.global.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phonenumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // color: Colors.white,

              width: double.infinity,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  kheight10,
                  CircleAvatar(
                    radius: 70,
                  ),
                  kheight20,
                  TextFormGlobal(
                      controller: nameController,
                      text: 'Name',
                      textInputType: TextInputType.text,
                      obscure: true),
                  kheight20,
                  TextFormGlobal(
                      controller: emailController,
                      text: 'Email',
                      textInputType: TextInputType.emailAddress,
                      obscure: true),
                  kheight20,
                  TextFormGlobal(
                      controller: passwordController,
                      text: 'Mobile',
                      textInputType: TextInputType.text,
                      obscure: true),
                  kheight20,
                  TextFormGlobal(
                      controller: passwordController,
                      text: 'Password',
                      textInputType: TextInputType.text,
                      obscure: false),
                  kheight20,
                  TextFormGlobal(
                      controller: passwordController,
                      text: 'Confirm Password',
                      textInputType: TextInputType.text,
                      obscure: false),
                  kheight30,
                  InkWell(onTap: (){Get.to(MessagePage());},
                    child: ButtonGlobal(text: 'Create Account')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
