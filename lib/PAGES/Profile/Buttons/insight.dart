import 'package:flutter/material.dart';

class Insight extends StatelessWidget {
  const Insight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text('I N S I G H T'),
      ),
      body: Center(
        child: Container(
          child:Text('I N S I G H T',
          ),
        ),
      ),
    );
  }
}
