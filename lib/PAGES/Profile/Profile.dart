import 'package:flutter/material.dart';
import 'package:insta_ui/PAGES/Profile/account1%20copy%202.dart';
import 'package:insta_ui/PAGES/Profile/account1%20copy%203.dart';
import 'package:insta_ui/PAGES/Profile/account1%20copy.dart';
import 'package:insta_ui/PAGES/Profile/account1.dart';
import 'package:insta_ui/PAGES/home/Homestories.dart';
import 'Buttons/addtools.dart';
import 'Buttons/editprofile.dart';
import 'Buttons/insight.dart';
import 'YoutubeLink.dart';

class MyProfile extends StatelessWidget {
  final String text;
  final String name;
  final String ProfileImage;

  MyProfile({
    required this.text,
    required this.ProfileImage,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 22),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/Images/new1.jpg'),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              contentPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(300),
                              ),
                              content: ClipRRect(
                                borderRadius: BorderRadius.circular(300),
                                child: Image.asset(
                                  'assets/Images/new1.jpg',
                                  fit: BoxFit.cover,
                                  height: 300,
                                  width: 300,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  
                  Column(
                    children: [
                      Text(
                        '323',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(' Following'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '1.1M',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text('Followers'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '252 ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text('Posts '),
                    ],
                  ),
                  
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Text(
                'Furqan',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Text(
                'I create Apps & Games',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => YoutubeLink(),
                        ));
                  },
                  child: Text(
                    'm.youtube/Furqanshah/',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditProfile(),
                              ));
                        },
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(horizontal: 2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddTools(),
                              ));
                        },
                        child: Text(
                          'Add tools',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(horizontal: 2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Insight(),
                              ));
                        },
                        child: Text(
                          'Insight',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(horizontal: 2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Stories
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyStories(
                      text: 'furqan',
                      ProfileImage: 'assets/Images/new1.jpg',
                    ),
                    MyStories(
                      text: 'yasir',
                      ProfileImage: 'assets/Images/new2.jpg',
                    ),
                    MyStories(
                      text: 'waris',
                      ProfileImage: 'assets/Images/new3.jpg',
                    ),
                    MyStories(
                      text: 'tariq',
                      ProfileImage: 'assets/Images/new4.jpg',
                    ),
                    MyStories(
                      text: 'imran',
                      ProfileImage: 'assets/Images/new5.jpg',
                    ),
                  ],
                ),
              ),
            ),

            TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.black,
                tabs: [
                  Tab(
                    icon: Icon(Icons.grid_3x3_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.video_call),
                  ),
                  Tab(
                    icon: Icon(Icons.shop),
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                  ),
                ]),
            Expanded(
              child: TabBarView(children: [
                GridGrid(),
                VideoCall(),
                Shop(),
                Person(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
