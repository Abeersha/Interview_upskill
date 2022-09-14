import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:interview_upskill/constants/constants.dart';

import 'package:interview_upskill/view/homepage.dart';
import 'package:interview_upskill/view/interviwer.profile.dart';
import 'package:interview_upskill/view/myinterviews.dart';
import 'package:interview_upskill/view/notifcation.interviewee.dart';
import 'package:interview_upskill/view/pendingrequests.dart';
import 'package:interview_upskill/view/profileLine.dart';
import 'package:interview_upskill/view/search.dart';
import 'package:interview_upskill/view/upcoming1.dart';

import '../constants/global_colors.dart';

class IntervieweeProfile extends StatelessWidget {
  const IntervieweeProfile({Key? key}) : super(key: key);

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
                backgroundImage: AssetImage('assets/profile1.jpg'),
                radius: 80,
          
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
            InkWell(onTap: (){Get.to(HomePage2());},
              child: ProfileLine(text: 'Posts')),
            kheight10,
            InkWell(onTap: (){Get.to(SearchPage());},
              child: ProfileLine(text: 'Networks')),
            kheight10,
            InkWell(onTap: (){Get.to(MyInterviews());},
              child: ProfileLine(text: 'My Interviews')),
            kheight10,
            InkWell(onTap: (){Get.to(pendingRequests());},
              child: ProfileLine(text: 'Pending requests')),
            kheight10,
            InkWell(onTap: (){Get.to(NotificationInterviewee());},
              child: ProfileLine(text: 'Notifications')),
            kheight10,
            InkWell(onTap: (){Get.to(upcoming1());},
              child: ProfileLine(text: 'Upcoming')),
            kheight10,
            InkWell( onTap: () {
                  Get.to(InterviewerProfile());
                },
              child: ProfileLine(text: 'Logout')),
          ],
        )));
  }
}
