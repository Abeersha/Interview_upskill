import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:interview_upskill/Controller/sign_up_controller.dart';
import 'package:interview_upskill/Service/user.auth.dart';
import 'package:interview_upskill/constants/constants.dart';
import 'package:interview_upskill/model/SignUp.model.dart';
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

  nameController.text = "Albert";
  phonenumberController.text = "7306729476";
  emailController.text= "albert@gmail.com";
  passwordController.text = "111111";
  




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
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  // kheight10,
                  // CircleAvatar(
                  //   radius: 70,
                  // ),
                  kheight50,
                  TextFormGlobal(
                    controller: nameController,
                    text: 'Name',
                    textInputType: TextInputType.text,
                  ),
                  kheight20,
                  TextFormGlobal(
                    controller: emailController,
                    text: 'Email',
                    textInputType: TextInputType.emailAddress,
                  ),
                  kheight20,
                  TextFormGlobal(
                    controller: phonenumberController,
                    text: 'Mobile',
                    textInputType: TextInputType.text,
                  ),
                  kheight20,
                  TextFormGlobal(
                      controller: passwordController,
                      text: 'Password',
                      textInputType: TextInputType.text,
                      obscure: true),
                  kheight20,
                  TextFormGlobal(
                      controller: passwordController,
                      text: 'Confirm Password',
                      textInputType: TextInputType.text,
                      obscure: true),
                  kheight20,
                  GetBuilder<SignupController>(
                      init: SignupController(),
                      builder: (controller) {
                        List<String> items = ["item 1", "item 2", "item 3"];

                        String? item;

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
                              print("tappped");
                              Map<String, dynamic> signUpPayload =
                                  SignUpPayloadModel(
                                confirmPassword: passwordController.text,
                                email: emailController.text,
                                experience: controller.dropdownValue,
                                interviewer: controller.switchValue,
                                name: nameController.text,
                                password: passwordController.text,
                                phone: phonenumberController.text,
                              ).toJson();

                              if (signUpPayload['experience'] == null) {
                                signUpPayload.remove("experience");
                              }

                              print("tapped");

                              UserAuthService.signUpUser(signUpPayload);

     

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
