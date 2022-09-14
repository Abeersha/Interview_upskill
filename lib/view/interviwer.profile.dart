import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_upskill/constants/constants.dart';
import 'package:interview_upskill/view/Interviewe.profile.dart';
import 'package:interview_upskill/view/dashboard.dart';
import 'package:interview_upskill/view/homepage.dart';

import 'package:interview_upskill/view/profileLine.dart';
import 'package:interview_upskill/view/request.interviewer1.dart';
import 'package:interview_upskill/view/search.dart';
import 'package:interview_upskill/view/upcoming2.dart';

import '../constants/global_colors.dart';

class InterviewerProfile extends StatelessWidget {
  const InterviewerProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: GlobalColors.mainColor,
          leading: Icon(Icons.arrow_back),
          title: Text('Account'),
          centerTitle: true,
        ),
        body: Container(
            child: Column(
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/profile2.jpg'),
                //  child: Image.asset('assets/profile1.jpg',fit: BoxFit.contain,)
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Alexander Jacob',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Flutter developer',
              style: TextStyle(),
            ),
            kheight20,
            InkWell(
                onTap: () {
                  Get.to(HomePage2());
                },
                child: ProfileLine(text: 'Posts')),
            kheight10,
            InkWell(
                onTap: () {
                  Get.to(SearchPage());
                },
                child: ProfileLine(text: 'Networks')),
            kheight10,
            InkWell(
                onTap: () {
                  Get.to(Dashboard());
                },
                child: ProfileLine(text: 'Dashboard')),
            kheight10,
            // InkWell(onTap: (){Get.to(pendingRequests());},
            // child: ProfileLine(text: 'Pending requests')),
            // kheight10,
            InkWell(
                onTap: () {
                  Get.to(RequestInterviewer1());
                },
                child: ProfileLine(text: 'Requests')),
            kheight10,
            InkWell(
                onTap: () {
                  Get.to(upcoming2());
                },
                child: ProfileLine(text: 'Upcoming')),
            kheight10,
            InkWell( onTap: () {
                  Get.to(IntervieweeProfile());
                },
              child: ProfileLine(text: 'Logout')),
          ],
        )));
  }
}
