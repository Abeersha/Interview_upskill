import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_upskill/Service/dio.client.dart';
import 'package:interview_upskill/model/profile.model.dart';
import 'package:interview_upskill/view/homepage.dart';

import '../view/home.posts.dart';
import 'local.storage.dart';

class UserAuthService {
  static Dio dio = DioClient.dio;
  static Future loginUser(
      {required String email, required String password}) async {
    try {
      var response = await dio.post(
        "/login",
        data: {
          "email": email,
          "password": password,
        },
      );

      print(response.data);

      Map<String, dynamic> logResponse = response.data;

      Map<String, dynamic>? userResponse = logResponse['user'];

      if (userResponse != null) {
        Map<String, dynamic> user = {
          "uId": userResponse['_id'],
          "token": logResponse['token'],
          "email": userResponse['email'],
          "name": userResponse['name'],
          "interviewer": userResponse['interviewer'],
        };
        

        GetLocalStorage.saveUserInformations(user);

        Get.offAll(HomePage());
      } else {
        Get.snackbar(
          'Warning',
          logResponse['message'],
          backgroundColor: Colors.white,
        );
      }
    } on DioError catch (e) {
      print("dio error");
      print(e.message);
      print(e.response?.data);
    } catch (e) {
      print("catch bloc called");
      print(e);
    }
  }

  static Future signUpUser(Map<String, dynamic> signUpPayload) async {
    Map<String, dynamic> headers = {};

    try {
      final response = await dio.post(
        "/registration",
        data: signUpPayload,
        options: Options(
          followRedirects: false,
          headers: headers,
        ),
      );

     
      Map<String, dynamic> logResponse = response.data;

      Map<String, dynamic>? userResponse = logResponse['user'];

      print(response.data);

      // GetLocalStorage.saveUserInformations(user);
      if (userResponse != null) {
        // Map<String, dynamic> user = {
        //   "uId": userResponse['_id'],
        //   "token": logResponse['token'],
        //   "email": userResponse['email'],
        //   "name": userResponse['name'],
        //   "interviewer": userResponse['interviewer'],
        // };

        // GetLocalStorage.saveUserInformations(user);

        loginUser(email: signUpPayload['email'], password: signUpPayload['password']);

        // Get.offAll(HomePage());
      } else {
        Get.snackbar(
          'Warning',
          logResponse['message'],
          backgroundColor: Colors.blue,
        );
      }


    } on DioError catch (e) {
      print('errrrrorrr');
      print(e.response?.statusMessage);
      print(e.error);
      print(e.message);
    } catch (e) {
      print("inside catch");
      print(e);
      return '';
    }
  }
}
