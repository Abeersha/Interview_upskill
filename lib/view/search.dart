import 'package:flutter/material.dart';
import 'package:interview_upskill/view/searchnetwork.dart';

import '../constants/global_colors.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors.mainColor,
        leading: Icon(Icons.arrow_back),
        title: Text('Search Network'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      // body: SearchnetworkCard(),
      body: GridView.count(
        
      
        crossAxisCount: 2,
        children: [
          SearchnetworkCard(),
          SearchnetworkCard(),
          SearchnetworkCard(),
          SearchnetworkCard(),
          SearchnetworkCard(),
          SearchnetworkCard(),
          SearchnetworkCard(),
          SearchnetworkCard(),
        ],
      ),
    );
  }
}
