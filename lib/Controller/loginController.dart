import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Service/user.auth.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? validateEmail(String email) {
    if (!GetUtils.isEmail(email)) {
      return "This is not a valid email";
    } else {
      return null;
    }
  }

  String? validatePassword(String pw) {
    if (pw.length < 6) {
      return "Minimum 6 characters";
    }
    return null;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    print(emailController.text);
    print(passwordController.text);
    
    if (isValid) {
      UserAuthService.loginUser(
          email: emailController.text, password: passwordController.text);
    }

    // Get.snackbar(
    //   "Success",
    //   "Logged in Successfully",
    //   backgroundColor: Colors.white,
    // );
  }
}
