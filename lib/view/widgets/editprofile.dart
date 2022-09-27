import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_upskill/Controller/profileController.dart';
import 'package:interview_upskill/Service/local.storage.dart';
import 'package:interview_upskill/Service/profile.service.dart';
import 'package:interview_upskill/constants/constants.dart';
import 'package:interview_upskill/constants/global_colors.dart';
import 'package:interview_upskill/view/widgets/change.password.dart';

class EditProfile extends StatelessWidget {
  EditProfile({Key? key}) : super(key: key);

  final GlobalKey<FormState> EditFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Edit Profile',
          ),
          centerTitle: true,
          backgroundColor: GlobalColors.mainColor,
        ),
        body: GetBuilder<ProfileController>(
            builder: (ProfileController controller) {
          if (controller.user == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            children: [
              kheight10,
              Center(
                  child: GetBuilder<ProfileController>(builder: (controller) {
                return GestureDetector(
                  onTap: () {
                    controller.profileImagePicker();
                  },
                  child: controller.file == null
                      ? CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage(
                            controller.user!.profileImage ??
                                "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png",
                          ))
                      : CircleAvatar(
                          radius: 70,
                          backgroundImage: FileImage(
                            controller.file!,
                          ),
                        ),
                );
              })),
              kheight10,
              Center(
                child: Text(
                  controller.user!.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(controller.user!.about),
              ),
              kheight20,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: profileController.nameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: 'Name',
                          labelText: 'Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    kheight10,
                    TextFormField(
                      controller: profileController.aboutController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: 'About',
                          labelText: 'About',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    kheight10,
                    TextFormField(
                      controller: profileController.emailController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: 'Email',
                          labelText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    kheight10,
                    TextFormField(
                      controller: profileController.phoneController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: 'Phone',
                          labelText: 'Phone',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    kheight10,
                    Visibility(
                      visible: profileController.user!.interviewer,
                      child: TextFormField(
                        controller: profileController.experianceController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Experiance',
                            labelText: 'Experiance',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ],
                ),
              ),
              kheight10,
              TextButton.icon(
                  onPressed: () {
                    Get.to(changePassword());
                  },
                  icon: Icon(Icons.abc),
                  label: Text('Change Password')),
              kheight20,
              ElevatedButton(
                  onPressed: () async{
                            String fileName = controller.file!.path.split('/').last;

                    Map<String, dynamic> payload = {
                      "profileImg":  await MultipartFile(controller.file!.path, filename: fileName,),
                      "name": controller.nameController.text,
                      "phone": controller.phoneController.text,
                      "about": controller.aboutController.text,
                      "experience": controller.experianceController.text,
                    };

                    String userId = GetLocalStorage.getUserInformation("uId");

                    ProfileServices()
                        .editProfileDetails(body: payload, userId: userId);
                  },
                  child: Text('Update'))
            ],
          );
        }),
      ),
    );
  }
}

