import 'package:flutter/material.dart';

class AddTools extends StatelessWidget {
  const AddTools({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text('A D D T O O L S'),
      ),
      body: Center(
        child: Container(
          child:Text('A D D T O O L S',
        ),
      ),
    ),
      );
  }
}
