import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:interview_upskill/view/Interviewe.profile.dart';
import 'package:interview_upskill/view/profilecard.dart';

class SearchnetworkCard extends StatelessWidget {
  const SearchnetworkCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset('assets/profile2.jpg', fit: BoxFit.fill),
              height: 120,
              width: 120,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: InkWell(onTap: () {
                  Get.to(ProfileCard());
                },
              child: Text(
                'Micheal Philip',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Text(
            'Interviewer',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
