import 'package:flutter/material.dart';
import 'package:interview_upskill/constants/constants.dart';
import 'package:interview_upskill/constants/global_colors.dart';

class ProfileRequest extends StatelessWidget {
  const ProfileRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Request'),
        centerTitle: true,
        backgroundColor: GlobalColors.mainColor,
      ),
      body: Center(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/profile2.jpg'),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Text(
                              'Alexander Jacob',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Flutter developer',
                            )
                          ],
                        ),
                        kheight20,
                      ]),
                    ),
                    kheight30,
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Date',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold,),
                              ),
                              Text(
                                'Time',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          color: Colors.lightBlue[200],
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  ':',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  ':',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ]),
                          color: Colors.lightBlue[200],
                          height: 100,
                          width: 20,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '19-09-2022',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '7 PM',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          color: Colors.lightBlue[200],
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                    kheight40,
                    Container(
                      child: Center(
                          child: Text(
                        'Send Request',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.blue,
                      ),
                      height: 50,
                      width: 180,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.lightBlue[200],
                ),
                height: 400,
                width: 350,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
