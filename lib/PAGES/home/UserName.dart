import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text('U S E R N A M E'),
      ),
      body: Center(
        child: Text(
          'U S E R N A M E',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
