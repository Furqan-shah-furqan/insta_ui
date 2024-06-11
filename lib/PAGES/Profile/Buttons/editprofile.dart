import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text('E D I T P R O F I L E'),
      ),
      body: Center(
        child: Container(
          child:Text('E D I T P R O F I L E'),
        ),
      ),
    );
  }
}
