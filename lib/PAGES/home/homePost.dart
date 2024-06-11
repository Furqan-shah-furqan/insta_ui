import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:insta_ui/PAGES/Profile/Profile.dart';
import 'package:insta_ui/PAGES/home/BookMark.dart';
import 'package:insta_ui/PAGES/home/Favorite.dart';
import 'package:insta_ui/PAGES/home/Messenger.dart';
import 'package:insta_ui/PAGES/home/PostMenu.dart';
import 'package:insta_ui/PAGES/home/Share.dart';

class UserPost extends StatelessWidget {
  final String name;
  final String text;
  final String ProfileImage;

  UserPost({
    required this.name,
    required this.text,
    required this.ProfileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13, vertical: 25),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: ExactAssetImage(ProfileImage),
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
                                ProfileImage,
                                fit: BoxFit.cover,
                                height: 300,
                                width: 300,
                              ),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyProfile(
                                ProfileImage: '',
                                text: '',
                                name: '',
                              )),
                    );
                  },
                  child: Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BurgerMenu()),
                    );
                  },
                  child: Container(
                    height: 22,
                    width: 22,
                    child: Image.asset(
                      'assets/Images/menu.png',
                      fit: BoxFit.cover,
                      // errorBuilder: (context, error, stackTrace) {
                      //   return Text('Error');
                      // },
                    ),
                  )),
            ),
          ],
        ),
        Flexible(
          child: Container(
            height: 400,
            width: 500,
            color: Colors.grey[300],
            child: Image.asset(
              fit: BoxFit.cover,
              ProfileImage,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Favorite()),
                        );
                      },
                      child: Icon(Icons.favorite),
                    ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Messenger()),
                        );
                      },
                      child: Icon(Icons.messenger_outline_sharp),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Share()),
                        );
                      },
                      child: Icon(Icons.share),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BookMark()),
                    );
                  },
                  child: Icon(Icons.bookmark),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Text(
                'Liked by  ',
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyProfile(
                            text: text, ProfileImage: ProfileImage, name: name),
                      ));
                },
                child: Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text('  and others '),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 20, left: 12, right: 12),
          child: RichText(
              text: TextSpan(style: TextStyle(color: Colors.black), children: [
            TextSpan(
              text:
                  'hello my name is furqan shah i am software ingeenier  is furqan shah i am software ingeenier',
            ),
          ])),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 241, 240, 240),
                offset: Offset(5, 0),
                blurRadius: 20,
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Colors.white70,
                spreadRadius: -5.0,
                blurRadius: 50.0,
              ),
            ],
          ),
          child: Container(
            height: 70,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Suggested for you'),
                  Container(
                    height: 12,
                    width: 12,
                    child: Image.asset(
                      'assets/Images/close.png',
                      fit: BoxFit.cover,
                      // errorBuilder: (context, error, stackTrace) {
                      //   return Text('Error');
                      // },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
