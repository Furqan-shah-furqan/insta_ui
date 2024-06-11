import 'package:flutter/material.dart';

class BurgerMenu extends StatelessWidget {
  const BurgerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(' M E N U '),
      ),
      body: Center(
        child: Text(
          ' M E N U ',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
