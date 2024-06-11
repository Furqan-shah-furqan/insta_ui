import 'package:flutter/material.dart';
import 'package:insta_ui/MyHome%20Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
      // theme: ThemeData(primarySwatch: Colors.transparent),
    );
  }
}
