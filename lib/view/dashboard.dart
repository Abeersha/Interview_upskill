import 'package:flutter/material.dart';
import 'package:interview_upskill/constants/constants.dart';
import 'package:interview_upskill/constants/global_colors.dart';
import 'package:interview_upskill/view/dashboard.card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
         centerTitle: true,
        backgroundColor: GlobalColors.mainColor,
       
      ),
      body: ListView(
        children: [
          kheight20,
          DashboardCard(name: 'Jacob Thomas', status: 'Interview done'),
          kheight20,
          
          DashboardCard(name: 'Alex Mathew', status: 'Interview done'),
            kheight20,
          DashboardCard(name: 'Rajeev Ravi', status: 'Interview done'),
            kheight20,
          DashboardCard(name: 'Issaq Tomy', status: 'Interview done'),
            kheight20,
          DashboardCard(name: 'Martin Jose', status: 'Cancelled'),
            kheight20,
        ],
      ),
    );
  }
}
