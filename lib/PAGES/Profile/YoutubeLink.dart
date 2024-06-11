import 'package:flutter/material.dart';

class YoutubeLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(' Y O U T U B E'),
      ),
      body: Center(
        child: Text(
          ' Y O U T U B E',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
