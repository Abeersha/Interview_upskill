import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_upskill/constants/constants.dart';
import 'package:interview_upskill/view/bottomcard.dart';
import 'package:interview_upskill/view/requests.interviewer2.dart';

class Interview1Card extends StatelessWidget {
  const Interview1Card(
      {Key? key,
      required this.name,
      required this.domain,
      required this.date,
      required this.time,
      required this.slot3left,
      required this.slot3right,
      })
      : super(key: key);

  final String name;

  final String domain;

  final String date;

  final String time;

  final String slot3left;

  final String slot3right;



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          kheight40,
          Center(
            child: Container(
              height: 60,
              width: 320,
              color: Color.fromARGB(255, 229, 229, 235),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.topLeft, child: CircleAvatar()),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(domain),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 270,
            width: 320,
            color: Color.fromARGB(255, 211, 211, 218),
            child: Padding(
              padding: EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  kheight50,
                  Row(
                    children: [
                      Container(
                          height: 150,
                          width: 90,
                          color: Color.fromARGB(255, 211, 211, 218),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 32),
                                child: Text(
                                  'Date',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 32),
                                child: Text(
                                  'Time',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 17),
                                child: Text(
                                  slot3left,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(width: 10),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              ':',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ':',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        height: 150,
                        width: 20,
                        color: Color.fromARGB(255, 211, 211, 218),
                      ),
                      SizedBox(width: 10),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              date,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              time,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              slot3right,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        height: 150,
                        width: 90,
                        color: Color.fromARGB(255, 211, 211, 218),
                      ),
                    ],
                  ),
                  kheight10,
              Padding(
                padding:  EdgeInsets.only(right: 5),
                child: Row(
                  children: [
                    BottomCard(buttonName: 'CANCEL', colorName: Colors.blue),
                    SizedBox(width: 10,),
                      InkWell(onTap: (){Get.to(RequestInterviewer());},
                        child: BottomCard(buttonName: 'CONFIRM', colorName: Colors.green)),
                    
                    

                  ],
                ),
              ),
              
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
