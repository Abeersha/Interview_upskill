import 'package:flutter/material.dart';

class BottomCard extends StatelessWidget {
  const BottomCard(
      {Key? key, required this.buttonName, required this.colorName})
      : super(key: key);

  final String buttonName;

  final Color colorName;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: colorName,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 35,
        width: 130,
        child: Center(
            child: Text(
          buttonName,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )));
  }
}
