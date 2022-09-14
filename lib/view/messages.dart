import 'package:flutter/material.dart';
import 'package:interview_upskill/constants/global_colors.dart';

import 'package:interview_upskill/view/messages.card.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors.mainColor,
        leading: Icon(Icons.arrow_back),
        title: Text('Messages'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: ListView(
        children: [
          MessageCard(),
          MessageCard(),
          MessageCard(),
          MessageCard(),
          MessageCard(),
          MessageCard(),
          MessageCard(),
          MessageCard(),
          MessageCard(),
          MessageCard(),
          MessageCard(),
          MessageCard(),
        ],
      ),
    );
  }
}
