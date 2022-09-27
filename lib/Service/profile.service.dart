import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:interview_upskill/model/edit.profile.dart';

import 'dio.client.dart';

class ProfileServices {
  static var dio = DioClient.dio;
  static Future<User?> getprofiledetails(String userId) async {
    try {
      var response = await dio.get("/details/$userId");

      EditProfile editProfile = editProfileFromJson(jsonEncode(response.data));

      print(editProfile.user.email);

      print(response.data);
      return editProfile.user;
    } catch (e) {
      print(e);
    }
    return null;
  }

  void editProfileDetails(
      {required Map<String, dynamic> body, required String userId}) async {
    try {
      FormData formData = FormData.fromMap(body);

      var response = await dio.put("/update/$userId",
          data: formData, options: Options(contentType: 'multipart/form-data'));
      print(response.data);
    } catch (e) {
      print(e);
      print("catch bloc called");
    }
  }
}
