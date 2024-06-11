import 'package:flutter/material.dart';

class Share extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(' S H A R E '),
      ),
      body: Center(
        child: Text(
          'S H A R E ',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
