import 'package:flutter/material.dart';

class Messenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text('M E S S A G E S'),
      ),
      body: Center(
        child: Text(
          'M E S S A G E S',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
