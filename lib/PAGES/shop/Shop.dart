import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:insta_ui/PAGES/Profile/Profile.dart';
import 'package:insta_ui/PAGES/shop/shopGrid.dart';

class MyShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 35,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.grey[300],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: Icon(
                          Icons.search,
                          size: 21,
                        ),
                      ),
                      Text(
                        ' Search',
                        style: TextStyle(color: Colors.grey[600], fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.shop),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  MyProfile(text: '', ProfileImage: '', name: ''),
                            ));
                      },
                      child: Icon(Icons.person)),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ShopGrid(),
    );
  }
}
