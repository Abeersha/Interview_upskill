import 'package:flutter/material.dart';
import 'package:interview_upskill/constants/global_colors.dart';
import 'package:interview_upskill/view/detail.buttoncards.dart';

class pendingRequests extends StatelessWidget {
  const pendingRequests({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pending Requests'),
        centerTitle: true,
        backgroundColor: GlobalColors.mainColor,
      ),
      body: DetailsButtonCard(name: 'John Mathew', domain: 'Flutter developer', date: '8 SEP 2022', time: '7 PM', buttonName: 'CANCEL', buttonColor: Colors.red),
      
    );
  }
}