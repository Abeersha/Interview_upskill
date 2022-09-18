import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:interview_upskill/Service/local.storage.dart';
import 'package:interview_upskill/Service/user.auth.dart';

import 'package:interview_upskill/constants/constants.dart';
import 'package:interview_upskill/constants/global_colors.dart';
import 'package:interview_upskill/view/button.global.dart';
import 'package:interview_upskill/view/home.posts.dart';
import 'package:interview_upskill/view/homepage.dart';
import 'package:interview_upskill/view/messages.dart';
import 'package:interview_upskill/view/signup.dart';

import 'package:interview_upskill/view/text.form.global.dart';

class LoginView extends StatelessWidget {
  LoginView({
    Key? key,
  }) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    emailController.text = "mansoor@gmail.com";
    passwordController.text = "111111";

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // color: Colors.amber,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: GlobalColors.mainColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kheight60,
                  Column(
                    children: [
                      Text(
                        'Login to your account',
                        style: TextStyle(
                          color: GlobalColors.mainColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      kheight30,
                      TextFormGlobal(
                        controller: emailController,
                        obscure: false,
                        text: 'Email',
                        textInputType: TextInputType.emailAddress,
                      ),
                      kheight30,
                      TextFormGlobal(
                          controller: passwordController,
                          text: 'Password',
                          textInputType: TextInputType.text,
                          obscure: false),
                      // ButtonGlobal(text: 'SIGN IN'),
                      ElevatedButton(
                          onPressed: () {
                             UserAuthService.loginUser(email: emailController.text, password: passwordController.text);
                          //  print(GetLocalStorage.getUserInformation("email"));
                             Get.to(HomePage());
                          },
                          child: Text(
                            'SIGN IN',
                          )),
        
                      kheight30,
                      const Text('-OR- '),
                      kheight20,
                      InkWell(
                        onTap: () {
                          Get.to(HomePage2());
                        },
                        child: const Text(
                          'Login with OTP',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          height: 200,
                          child: RichText(
                              text: TextSpan(
                                  text: 'Dont have an account?',
                                  style: TextStyle(
                                    color: GlobalColors.textColor,
                                    fontSize: 15,
                                  ),
                                  children: [
                                TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Get.to(SignUp());
                                      },
                                    text: 'SignUp',
                                    style: TextStyle(
                                      color: GlobalColors.mainColor,
                                      fontWeight: FontWeight.bold,
                                    ))
                              ])))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
