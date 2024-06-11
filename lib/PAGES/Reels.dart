import 'package:flutter/material.dart';

class MyReels extends StatefulWidget {
  const MyReels({super.key});

  @override
  State<MyReels> createState() => _MyReelsState();
}

class _MyReelsState extends State<MyReels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomScrollView(
        slivers: [SliverAppBar()],
      ),
    );
  }
}
