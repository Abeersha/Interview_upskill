import 'package:flutter/material.dart';
import 'package:interview_upskill/constants/global_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.pageName}) : super(key: key);

  final String pageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: GlobalColors.mainColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back),
          Padding(
            padding: const EdgeInsets.only(right: 180),
            child: Center(
                child: Text(
              pageName,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ],
      ),
    );
  }
}
