import 'package:flutter/material.dart';
import 'package:interview_upskill/constants/global_colors.dart';
import 'package:interview_upskill/view/homepage.dart';
import 'package:interview_upskill/view/interviwer.profile.dart';

import 'package:interview_upskill/view/messages.dart';

import 'package:interview_upskill/view/search.dart';
import 'package:interview_upskill/view/share.post.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;

  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _children = [
    HomePage2(),
    MessagePage(),
    SharePosts(),
    SearchPage(),
    InterviewerProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedindex,
          onTap: _navigateBottomNavBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: GlobalColors.mainColor),
            BottomNavigationBarItem(
                icon: const Icon(Icons.message),
                label: 'messages',
                backgroundColor: GlobalColors.mainColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined),
                label: 'post',
                backgroundColor: GlobalColors.mainColor),
            BottomNavigationBarItem(
                icon: const Icon(Icons.search_rounded),
                label: 'search',
                backgroundColor: GlobalColors.mainColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account',
                backgroundColor: GlobalColors.mainColor),
          ]),
    );
  }
}
