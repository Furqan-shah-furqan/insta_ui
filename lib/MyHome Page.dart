import 'package:flutter/material.dart';
import 'package:insta_ui/PAGES/home/Home.dart';
import 'package:insta_ui/PAGES/Profile/Profile.dart';
import 'package:insta_ui/PAGES/Reels.dart';
import 'package:insta_ui/PAGES/Search/Search.dart';
import 'package:insta_ui/PAGES/shop/Shop.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _bottomnavigation(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    MyHome(),
    MySearch(),
    MyReels(),
    MyShop(),
    MyProfile(
      ProfileImage: '',
      text: '',
      name: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          fixedColor: Color.fromARGB(255, 0, 0, 0),
          unselectedItemColor: Colors.grey[600],
          onTap: _bottomnavigation,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.shop_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: ''),
          ]),
    );
  }
}
