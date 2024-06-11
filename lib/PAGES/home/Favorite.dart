import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text('F A V O R I T E'),
      ),
      body: Center(
        child: Text(
          'F A V O R I T E',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
