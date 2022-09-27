import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:interview_upskill/Service/local.storage.dart';
import 'package:interview_upskill/Service/profile.service.dart';

import '../model/edit.profile.dart';

class ProfileController extends GetxController {
  // Rx<User?> userDetais = Rxn<User?>();

  User? user;
  // Uint8List? binaryImagepic;
  File? file;
  // bool? isInterviewer;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController aboutController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController experianceController = TextEditingController();

  Future<User?> getUserDetails() async {
    try {
      var userId = GetLocalStorage.getUserInformation("uId");

      User? user = await ProfileServices.getprofiledetails(userId);
      return user;
    } catch (e) {
      print(e);
      print("catch block called");
    }
  }

  void profileImagePicker() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (image == null) {
      return;
    }

     file = File(image.path);

    // binaryImagepic = await image.readAsBytes();
    update();
  }

  @override
  void onInit() {
    getUserDetails().then(
      (value) {
        user = value;
        nameController.text = value!.name;
        aboutController.text = value.about;
        emailController.text = value.email;
        phoneController.text = value.phone.toString();
        experianceController.text = value.experience.toString();
        print(user?.interviewer);
        update();
      },
    );
    // TODO: implement onInit
    super.onInit();
  }
}
