import 'package:flutter/material.dart';
import 'package:insta_ui/PAGES/Profile/Profile.dart';

class MyStories extends StatelessWidget {
  final String text;
  final String ProfileImage;

  const MyStories({
    super.key,
    required this.text,
    required this.ProfileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0), // Clip the corners
                child: Image.asset(
                  ProfileImage,
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover,
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
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
