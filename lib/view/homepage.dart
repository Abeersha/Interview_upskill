

import 'package:flutter/material.dart';
import 'package:interview_upskill/constants/global_colors.dart';

import 'package:interview_upskill/view/post.card.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2 ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
        centerTitle: true,
        backgroundColor: GlobalColors.mainColor,
      ),

      body: ListView(
        children: [
         
          PostCard(),
          PostCard(),
        ],
      ),
    );
    
      
    
  }
}