
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onboard extends StatelessWidget {
  const Onboard({Key? key}) : super(key: key);

 

  @override
Widget build(BuildContext context) => SafeArea(child: IntroductionScreen(
pages: [
  PageViewModel(
    title: 'Unhappy with your Interview skills',
  ),
],
done: const Text('SKIP', style: TextStyle(fontWeight: FontWeight.bold),),

));
}

