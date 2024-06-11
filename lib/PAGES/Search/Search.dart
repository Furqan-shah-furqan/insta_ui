import 'package:flutter/material.dart';
import 'package:insta_ui/PAGES/Search/SearchGrid.dart';

// ignore: must_be_immutable
class MySearch extends StatefulWidget {
  MySearch({super.key});

  @override
  State<MySearch> createState() => _MySearchState();
}

class _MySearchState extends State<MySearch> {
  final List<String> people = [
    'Furqan 1',
    'Furqan 2',
    'Furqan 3',
    'Furqan 4',
    'Furqan 5',
    'Furqan 6',
    'Furqan 7',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Stack(children: [
                  SizedBox(
                    height: 35,
                    width: 355,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey[600]),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(7)),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                        filled: true,
                        fillColor: Colors.grey[300],
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
      body: SearchGrid(),
    );
  }
}
