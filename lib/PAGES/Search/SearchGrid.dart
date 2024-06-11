import 'package:flutter/material.dart';
import 'package:insta_ui/PAGES/Search/masonryGrid.dart';

// ignore: must_be_immutable
class SearchGrid extends StatelessWidget {
  SearchGrid({
    super.key,
  });

  late final String ProfileImage;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MasonryGridnew(),
      ),
    );
  }
}
