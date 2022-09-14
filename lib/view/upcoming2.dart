import 'package:flutter/material.dart';
import 'package:interview_upskill/constants/global_colors.dart';
import 'package:interview_upskill/view/details.card.dart';

class upcoming2 extends StatelessWidget {
  const upcoming2 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Upcoming'),
          centerTitle: true,
          backgroundColor: GlobalColors.mainColor,
        ),
        body: ListView(
          children:[ DetailsCard(
              name: 'George Pious',
              domain: 'Flutter developer',
              date: '15 SEP 2022',
              time: '5 PM',
              slot3left: ' Link',
              slot3right: 'Inteview Link',
              status: 'Confirmed'),
              DetailsCard(
            name: 'Mark Manson',
            domain: 'Flutter developer',
            date: '17 SEP 2022',
            time: '5 PM',
            slot3left: ' Link',
            slot3right: 'Inteview Link',
            status: 'Confirmed'),
          ],
        ),

            
            
            
            );
  }
}
