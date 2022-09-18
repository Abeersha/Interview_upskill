import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:interview_upskill/Controller/imagePicker.dart';
import 'package:interview_upskill/constants/constants.dart';
import 'package:interview_upskill/constants/global_colors.dart';

import '../constants/global_colors.dart';

class SharePosts extends StatelessWidget {
  const SharePosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ImageController imageController = Get.put(ImageController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors.mainColor,
        title: Text('Share Posts'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              color: Color.fromARGB(255, 199, 203, 205),
              height: 70,
              width: double.infinity,
            ),
            // SharePostText(),
            // PostText(),
            TextField(
              decoration: InputDecoration(
                  // labelText: 'Whats on your mind?',
                  hintText: 'Whats on your mind?',
                  border: OutlineInputBorder()),
              maxLines: 10,
            ),
            kheight10,

            ElevatedButton(onPressed: () {}, child: Text('Post')),
            kheight20,

            GetBuilder<ImageController>(builder: (controller) {
              return Builder(builder: (context) {
                if (controller.imagePath == null) {
                  return SizedBox();
                }

                return Stack(
                  children: [
                    
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        image: DecorationImage(
                          image: FileImage(
                            File(controller.imagePath!),
                          ),
                        ),
                      ),
                      height: 200,
                      width: 200,
                    ),
                    Positioned(
                      right: 5,
                      top: 5,
                      child: IconButton(
                        onPressed: () 
                        {
                          controller.removeImage();
                        },
                        icon: Icon(Icons.close),
                      ),
                    ),
                  ],
                );
              });
            }),

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
                    onTap: () {
                      imageController.pickimage(ImageSource.camera);
                    },
                    leading: Icon(
                      Icons.camera_alt,
                      size: 30,
                    ),
                    title: Text(
                      'Take a photo',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      imageController.pickimage(ImageSource.gallery);
                    },
                    leading: Icon(
                      Icons.photo_album,
                      size: 30,
                    ),
                    title: Text(
                      'Upload from gallery',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
    );
  }
}
