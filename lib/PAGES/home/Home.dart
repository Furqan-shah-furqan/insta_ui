import 'package:flutter/material.dart';
import 'package:insta_ui/PAGES/home/Favorite.dart';
import 'package:insta_ui/PAGES/home/Homestories.dart';
import 'package:insta_ui/PAGES/home/Share.dart';
import 'package:insta_ui/PAGES/home/homePost.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final List<String> people = [
    'Furqan 1',
    'Furqan 2',
    'Furqan 3',
    'Furqan 4',
    'Furqan 5',
    'Furqan 6',
    'Furqan 7',
  ];

  var imagePaths = [
    {'imageUrl': 'assets/Images/new1.jpg'},
    {'imageUrl': 'assets/Images/new2.jpg'},
    {'imageUrl': 'assets/Images/new3.jpg'},
    {'imageUrl': 'assets/Images/new4.jpg'},
    {'imageUrl': 'assets/Images/new5.jpg'},
    {'imageUrl': 'assets/Images/new6.jpg'},
    {'imageUrl': 'assets/Images/new7.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Instagram"),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Favorite(),
                      ),
                    );
                  },
                  icon: Icon(Icons.favorite),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Share(),
                      ),
                    );
                  },
                  icon: Icon(Icons.share),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return MyStories(
                    ProfileImage: imagePaths[index]['imageUrl']!,
                    text: people[index],
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              // scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPost(
                  name: people[index],
                  text: people[index],
                  ProfileImage: imagePaths[index]['imageUrl']!,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
