import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';

class SignupController extends GetxController {
  final GlobalKey<FormState> SignUpFormKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();

  bool switchValue = false;
  int radioButtonValue = 0;
  String? dropdownValue;

  toggleSwitch(bool value) {
    switchValue = value;
    radioButtonValue = 0;
    dropdownValue = null;
    update();
  }

  changeRadioButton(int value) {
    radioButtonValue = value;
    update();
  }

  changeDropdownButtonValue(String value) {
    dropdownValue = value;
    update();
  }

  String? validateUsername(String name) {
    if (!GetUtils.isAlphabetOnly(name)) {
      return "This is not a valid user name";
    } else {
      return null;
    }
  }

  String? validateEmail(String email) {
    if (!GetUtils.isEmail(email)) {
      return "This is not a valid email";
    } else {
      return null;
    }
  }

  String? validateMobile(String mobile) {
    if (!GetUtils.isPhoneNumber(mobile)) {
      return "This in not valid mobile number";
    } else {
      return null;
    }
  }

  String? validatePassword(String password) {
    if (password.length < 6) {
      return "Minimum 6 characters";
    }
    return null;
  }

  String? validateConfirmPassword(String cPassword) {
    if (cPassword.isEmpty) {
      return "Required field";
    } else if (passwordController.text != cPasswordController.text) {
      "password doesn't match";
    }
    return null;
  }

  String? signupUser() {}
}


//  void checkLogin() {
//     final isValid = loginFormKey.currentState!.validate();
//     if (!isValid) {
//       return;
//     } else {
//       UserAuthService.loginUser(
//           email: emailController.text, password: passwordController.text);
//     }

//     Get.offAll(HomePage());
//     Get.snackbar(
//       "Success",
//       "Logged in Successfully",
//       backgroundColor: Colors.white,
//     );
//   }