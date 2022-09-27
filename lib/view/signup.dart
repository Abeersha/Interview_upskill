import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:interview_upskill/Controller/sign_up_controller.dart';

import 'package:interview_upskill/Service/user.auth.dart';
import 'package:interview_upskill/constants/constants.dart';
import 'package:interview_upskill/model/SignUp.model.dart';
import 'package:interview_upskill/view/button.global.dart';

import '../Controller/sign_up_controller.dart';

// ignore: must_be_immutable
class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    
    SignupController signupController = Get.put(SignupController());
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
         

              width: double.infinity,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),

                  kheight50,

                  kheight20,

                  Form(
                    key: signupController.SignUpFormKey,
                    child: Column(
                      children: [
                        TextFormField(
                          focusNode: FocusNode(),
                          validator: (name) {
                            return signupController.validateUsername(name!);
                          },
                          controller: signupController.nameController,
                          obscureText: false,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Your name',
                            labelText: 'Name',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        kheight20,
                        TextFormField(
                          focusNode: FocusNode(),
                          validator: (email) {
                            return signupController.validateEmail(email!);
                          },
                          controller: signupController.emailController,
                          obscureText: false,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Your Email',
                            labelText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        kheight20,
                        TextFormField(
                          focusNode: FocusNode(),
                          validator: (mobile) {
                            return signupController.validateMobile(mobile!);
                          },
                          controller: signupController.phonenumberController,
                          obscureText: false,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Your Mobile',
                            labelText: 'Mobile',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        kheight20,
                        TextFormField(
                          focusNode: FocusNode(),
                          validator: (password) {
                            return signupController.validatePassword(password!);
                          },
                          controller: signupController.passwordController,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            labelText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        kheight20,
                        TextFormField(
                          focusNode: FocusNode(),
                          validator: (cPassword) {
                            return signupController
                                .validateConfirmPassword(cPassword!);
                          },
                          controller: signupController.cPasswordController,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            labelText: 'Confirm Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  kheight20,
                  GetBuilder<SignupController>(
                      init: SignupController(),
                      builder: (controller) {
                        return Column(
                          children: [
                            SwitchListTile(
                              value: controller.switchValue,
                              onChanged: (value) {
                                controller.toggleSwitch(value);
                              },
                              title: Text(controller.switchValue
                                  ? "interviewer"
                                  : "interviewee"),
                            ),
                            Visibility(
                              visible: controller.switchValue,
                              child: Row(
                                // mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: RadioListTile<int>(
                                      // contentPadding: EdgeInsets.all(0),
                                      value: 0,
                                      groupValue: controller.radioButtonValue,
                                      onChanged: (value) {
                                        print("tapped");
                                        controller.changeRadioButton(value!);
                                      },
                                      title: Text("Fresher"),
                                    ),
                                  ),
                                  Expanded(
                                      child: RadioListTile<int>(
                                    value: 1,
                                    groupValue: controller.radioButtonValue,
                                    onChanged: (int? value) {
                                      controller.changeRadioButton(value!);
                                    },
                                    title: Text("Experienced"),
                                  ))
                                ],
                              ),
                            ),
                            Visibility(
                              visible: controller.radioButtonValue == 1,
                              child: SizedBox(
                                // color: Colors.red,
                                width: 250,
                                child: DropdownButton<String>(
                                  value: controller.dropdownValue,
                                  // isDense: true,
                                  hint: Text("Select number of years"),
                                  items: List.generate(
                                      10,
                                      (index) => DropdownMenuItem(
                                          value: "${index + 1}",
                                          child: Text(
                                            "${index + 1}",
                                          ))),
                                  onChanged: (value) {
                                    controller
                                        .changeDropdownButtonValue(value!);
                                  },
                                ),
                              ),
                            )
                          ],
                        );
                      }),

                  // Switch(value: true, onChanged: (value) {}),
                  GetBuilder<SignupController>(builder: (controller) {
                    bool isButtonDisabled = controller.dropdownValue == null &&
                        controller.radioButtonValue == 1;

                    return ButtonGlobal(
                      text: 'Create Account',
                      onTap: isButtonDisabled
                          ? null
                          : () {
                              bool isValid = controller
                                  .SignUpFormKey.currentState!
                                  .validate();

                              if (isValid) {
                                print("tappped");
                                Map<String, dynamic> signUpPayload =
                                    SignUpPayloadModel(
                                  confirmPassword:
                                      controller.cPasswordController.text,
                                  email: controller.emailController.text,
                                  experience: controller.dropdownValue,
                                  interviewer: controller.switchValue,
                                  name: controller.nameController.text,
                                  password: controller.passwordController.text,
                                  phone: controller.phonenumberController.text,
                                ).toJson();

                                if (signUpPayload['experience'] == null) {
                                  signUpPayload.remove("experience");
                                }

                                print("tapped");

                                UserAuthService.signUpUser(signUpPayload);
                              }
                            },
                      bgColor: isButtonDisabled ? Colors.grey : null,
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
