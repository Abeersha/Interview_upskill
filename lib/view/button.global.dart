import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:interview_upskill/constants/global_colors.dart';

class ButtonGlobal extends StatelessWidget {
   ButtonGlobal({Key? key, required this.text, required this.onTap ,this.bgColor}) : super(key: key);

  final String text;
  VoidCallback? onTap;
  Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
            color:bgColor?? GlobalColors.mainColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
              ),
            ]),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
