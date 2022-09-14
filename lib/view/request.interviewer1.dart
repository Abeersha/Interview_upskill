import 'package:flutter/material.dart';
import 'package:interview_upskill/constants/global_colors.dart';
import 'package:interview_upskill/view/interview1.card.dart';

class RequestInterviewer1 extends StatelessWidget {
  const RequestInterviewer1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Requests'),
        centerTitle: true,
        backgroundColor: GlobalColors.mainColor,
      ),
      body: ListView(
        children: [
          Interview1Card(name: 'Swathi Manoj', domain: 'Flutter developer', date: '9 SEP 2022', time: '7 PM', slot3left: '', slot3right: '')
        ],
      ),
      
    );
  }
}