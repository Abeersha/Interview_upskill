import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interview_upskill/constants/global_colors.dart';

class Otpform extends StatelessWidget {
  const Otpform({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Form(
        child: Row(
          children :[
            SizedBox(
  
              height: 68,
              width: 64,
              child: TextField(
                style: Theme.of(context).textTheme.headline6,
                keyboardType: TextInputType.number,
                inputFormatters:[
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            )
          ]
        )
        
      ),
    );
  }
}