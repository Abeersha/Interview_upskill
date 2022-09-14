import 'package:flutter/material.dart';
import 'package:interview_upskill/constants/constants.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            ListTile(
              
                title: Text(
                  'Alexander Jacob',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Flutter developer'),
                
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/IMG_6103.jpg')
                  // backgroundColor: Colors.amber,
                  
                ), trailing: Icon(Icons.add),),
                Image.asset('assets/IMG_6103.jpg',height: 320, width: double.infinity,fit: BoxFit.cover,),
                kheight20,
                Row(
                  children: [
                    
    SizedBox(width: 10,),
                    Icon(Icons.thumb_up),
                      SizedBox(width: 7,),
                    Text('12'),
                    SizedBox(width: 10,),
                    Icon(Icons.comment),
                           SizedBox(width: 10,),
                     Text('24'),
SizedBox(width: 250,),
                    Icon(Icons.telegram),
                  ],
                )

          ],
        ),
      ),
    );
  }
}
