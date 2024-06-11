import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class ShopGrid extends StatelessWidget {
  late final String ProfileImage;
  List<Map<String, dynamic>> imagePaths = [
    {
      'imageUrl':
          'https://images.pexels.com/photos/1402787/pexels-photo-1402787.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'imageUrl':
          'https://images.pexels.com/photos/842711/pexels-photo-842711.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'imageUrl':
          'https://images.pexels.com/photos/1213447/pexels-photo-1213447.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'imageUrl':
          'https://images.pexels.com/photos/4205505/pexels-photo-4205505.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'imageUrl':
          'https://images.pexels.com/photos/2912583/pexels-photo-2912583.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'imageUrl':
          'https://images.pexels.com/photos/57690/pexels-photo-57690.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'imageUrl':
          'https://images.pexels.com/photos/1654748/pexels-photo-1654748.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'imageUrl':
          'https://images.pexels.com/photos/1645668/pexels-photo-1645668.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'imageUrl':
          'https://images.pexels.com/photos/1109197/pexels-photo-1109197.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'imageUrl':
          'https://images.pexels.com/photos/2097090/pexels-photo-2097090.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'imageUrl':
          'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'imageUrl':
          'https://images.pexels.com/photos/1229356/pexels-photo-1229356.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'imageUrl':
          'https://images.pexels.com/photos/2468339/pexels-photo-2468339.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          var items = imagePaths[index];
          return Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 65, 65),
                  image: DecorationImage(
                      image: NetworkImage("${items['imageUrl']}"),
                      fit: BoxFit.cover),
                ),
              ));
        },
      ),
    );
  }
}
