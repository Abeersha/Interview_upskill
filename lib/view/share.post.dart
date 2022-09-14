import 'package:flutter/material.dart';
import 'package:interview_upskill/constants/constants.dart';
import 'package:interview_upskill/constants/global_colors.dart';

import '../constants/global_colors.dart';

class SharePosts extends StatelessWidget {
  const SharePosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors.mainColor,
        title: Text('Share Posts'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(children: [
          kheight20,
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    'John mathew',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            color: Color.fromARGB(255, 199, 203, 205),
            height: 70,
            width: double.infinity,
          ),
          SharePostText(),
          kheight10,
          Padding(
            padding: const EdgeInsets.only(left: 250),
            child: PostButton(),
          ),
          kheight20,
          Divider(
            color: GlobalColors.mainColor,
            indent: 80,
            endIndent: 80,
            thickness: 2,
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                    leading: Icon(
                      Icons.camera_alt,
                      size: 30,
                    ),
                    title: Text(
                      'Take a photo',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                ListTile(
                  leading: Icon(
                    Icons.photo_album,
                    size: 30,
                  ),
                  title: Text(
                    'Upload from gallery',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            // color: Colors.amber,
            height: 120,
            width: double.infinity,
          )
        ]),
      ),
    );
  }

  Container PostButton() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: GlobalColors.mainColor,
      ),
      child: Center(
          child: Text(
        'Post',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      )),
      height: 40,
      width: 100,
      // color: GlobalColors.mainColor,
    );
  }

  Container SharePostText() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: .0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          'Whats on your mind?',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),

      height: 320,
      width: double.infinity,
      //  color: Color.fromARGB(255, 225, 228, 232),
    );
  }
}
