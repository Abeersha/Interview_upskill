import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({Key? key, required this.name, required this.status}) : super(key: key);

  final String name;

  final String status;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Container(
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text(status, style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal,),)
                  ],
                ),
              )
            ],
          ),

          decoration: BoxDecoration(
              color: Color.fromARGB(255, 216, 215, 211), borderRadius: BorderRadius.circular(30)),
          height: 60,
          width: 350,
          // color: Colors.amber,
        ),
      ),
    );
  }
}
