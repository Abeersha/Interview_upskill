





import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:interview_upskill/constants/constants.dart';
import 'package:interview_upskill/constants/global_colors.dart';
import 'package:interview_upskill/view/profile.request.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: GlobalColors.mainColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white,
          height: 600,
          width: double.infinity,
          child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/profile2.jpg'),fit: BoxFit.fill),
                  color: Color.fromARGB(255, 208, 216, 222),
                  borderRadius: BorderRadius.circular(50),
                  // image: Image(image: )
                ),
                height: 300,
                width: 250,
                // color: Colors.black,
              ),
            
            ),
            Text('Alexander Jacob',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text('Flutter developer'),
            kheight30,
            Row(
              children:[
                Container(
                  
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Text('Networks',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blue),),
                     Text('Posts',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blue),),
                   ],
                 ),
                 
                    
                  
                  
                  height: 100,
                  width: 100,
                  color: Colors.white,
                ),
                SizedBox(width: 10,),
                Container(
                
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('15',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Text('5',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  width: 50,
                  height: 100 ,
                  color: Colors.white,
                )
              ]
            ),
            kheight50,
            ElevatedButton(onPressed: (){Get.to(ProfileRequest()) ;}, child: Text('Request')),
            // Container(
            //   decoration: BoxDecoration(
                
            //     color: GlobalColors.mainColor,
            //     borderRadius: BorderRadius.circular(30)
            //   ),
            //   // color: Colors.black12,
            //   height: 50,
            //   width: 150,
            //   child: Center(child: Text('Request',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)),
            // )
          ],
          

          ),
          
        ),
      )
    );
  }
}
