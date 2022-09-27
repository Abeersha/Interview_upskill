import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:interview_upskill/Controller/loginController.dart';
import 'package:interview_upskill/Service/user.auth.dart';

import 'package:interview_upskill/constants/constants.dart';
import 'package:interview_upskill/constants/global_colors.dart';
import 'package:interview_upskill/view/home.posts.dart';
import 'package:interview_upskill/view/homepage.dart';
import 'package:interview_upskill/view/signup.dart';

import 'package:interview_upskill/view/text.form.global.dart';

class LoginView extends StatefulWidget {
  LoginView({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

//
class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  LoginController loginContoller = Get.put(LoginController());

  // final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {


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
                      Form(
                        key: loginContoller.loginFormKey,
                        child: Column(children: [
                          TextFormField(
                            focusNode: FocusNode(),
                            validator: (email) {
                              return loginContoller.validateEmail(email!);
                            },
                            controller: loginContoller.emailController,
                            obscureText: false,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Your email',
                              labelText: 'Email',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                          kheight30,
                          TextFormField(
                            focusNode: FocusNode(),
                            validator: (password) {
                              return loginContoller.validatePassword(password!);
                            },
                            controller: loginContoller.passwordController,
                            obscureText: true,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Your password',
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                        ]),
                      ),
                      kheight20,
                      ElevatedButton(
                          onPressed: () {
                            print("hgfhfyjyftyjgggggggg");
                            // if (_formkey.currentState!.validate() == false) {
                            //   print("The form submitted");
                            // } else {

                            //   // Get.to(HomePage());
                            // }

                            loginContoller.checkLogin();
                          },
                          child: Text(
                            'SIGN IN',
                          )),
                      kheight30,
                      const Text(''),
                      kheight20,
                      InkWell(
                        onTap: () {
                          Get.to(HomePage2());
                        },
                        child: const Text(
                          '',
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
                                        Get.to(SignUpPage());
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
