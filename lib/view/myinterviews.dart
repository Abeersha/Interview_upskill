import 'package:flutter/material.dart';
import 'package:interview_upskill/constants/global_colors.dart';
import 'package:interview_upskill/view/details.card.dart';

class MyInterviews extends StatelessWidget {
  const MyInterviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors.mainColor,
        title: Text('My Interviews'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          DetailsCard(
              name: 'Johnanthan Mike',
              domain: 'Flutter developer',
              date: '7 SEP 2022',
              time: '6 PM',
              slot3left: 'Amount',
              slot3right: 'Rs 500',
              status: 'Completed'),
          DetailsCard(
              name: 'David Wein',
              domain: 'Flutter developer',
              date: '6 SEP 2022',
              time: '6 PM',
              slot3left: 'Amount',
              slot3right: 'Rs 500',
              status: 'Completed'),
          DetailsCard(
              name: 'Alex Thomas',
              domain: 'Flutter developer',
              date: '5 SEP 2022',
              time: '6 PM',
              slot3left: 'Amount',
              slot3right: 'Rs 500',
              status: 'Completed'),
        ],
      ),
    );
  }
}
