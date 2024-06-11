import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(color: Colors.green[200]),
          ),
        );
      },
    );
  }
}
