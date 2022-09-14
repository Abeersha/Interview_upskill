import 'package:flutter/material.dart';
import 'package:interview_upskill/constants/global_colors.dart';
import 'package:interview_upskill/view/notification.card.dart';

class NotificationInterviewee extends StatelessWidget {
  const NotificationInterviewee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notications'),
        centerTitle: true,
        backgroundColor: GlobalColors.mainColor,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: NotificationCard(
                name: 'Joseph Mathews',
                domain: 'Flutter developer',
                date: '7 SEP 2022',
                time: '7 PM',
                slot3left: 'PAY',
                slot3right: '500',
                buttonName1: 'CANCEL',
                buttonColor1: Colors.red,
                buttonName2: 'CONFIRM',
                buttonColor2: Colors.green),
                
          ),

            Padding(
            padding: const EdgeInsets.only(right: 12),
            child: NotificationCard(
                name: 'Joseph Mathews',
                domain: 'Flutter developer',
                date: '7 SEP 2022',
                time: '7 PM',
                slot3left: 'PAY',
                slot3right: '500',
                buttonName1: 'CANCEL',
                buttonColor1: Colors.red,
                buttonName2: 'CONFIRM',
                buttonColor2: Colors.green),
                
          )
        ],
      ),
    );
  }
}
