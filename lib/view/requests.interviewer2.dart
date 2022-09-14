

import 'package:flutter/material.dart';
import 'package:interview_upskill/constants/constants.dart';
import 'package:interview_upskill/constants/global_colors.dart';
import 'package:interview_upskill/view/bottomcard.dart';

class RequestInterviewer extends StatelessWidget {
  const RequestInterviewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Requests'),
        centerTitle: true,
        backgroundColor: GlobalColors.mainColor,
      ),
      body: Column(
        children: [
          kheight20,
          Center(
            child: Container(
              child: Center(
                  child: Text(
                'Request Confirmation',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
              height: 50,
              width: 300,
              decoration: BoxDecoration(color: Color.fromARGB(255, 87, 134, 227)),
            ),
          ),
Container(
  
  
  child: Align(alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(radius: 29),
          Text('Sara Joseph', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ),)
        ],
        
      ),
    )),
  height: 70,
  width: 300,
  color: Color.fromARGB(255, 194, 205, 207)

),
Container(
  child: Column(
    children: [
      kheight20,
      Container(
        child: Text('Type your message...',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        height: 130,
        width: 220,
        color: Colors.white,
      ),
      kheight20,
      Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Interview link'),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        height: 28,
        width: 220,
        // color: Colors.white,
      ),
      kheight30,
      BottomCard(buttonName: 'CONFIRM', colorName: Colors.green)
    ],
  ),
  height: 300,
  width: 300,
  color: Color.fromARGB(255, 196, 199, 202),
)



        ],
      ),
    );
  }
}
