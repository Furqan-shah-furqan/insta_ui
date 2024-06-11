import 'package:flutter/material.dart';

class BookMark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text('B O O K M A R K'),
      ),
      body: Center(
        child: Text(
          'B O O K M A R K',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
