import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          // child: DropdownButtonHideUnderline(
          //   child: DropdownButton2<String>(
          //     customButton: const Icon(
          //       Icons.list,
          //       size: 46,
          //       color: Colors.red,
          //     ),
          //     items: [
          //       DropdownMenuItem<String>(
          //         value: 'Following',
          //         child: Text(
          //           'Following',
          //           style: const TextStyle(
          //             fontSize: 14,
          //           ),
          //         ),
          //       ),
          //       DropdownMenuItem<String>(
          //         value: 'Favorite',
          //         child: Text(
          //           'Favorite',
          //           style: const TextStyle(
          //             fontSize: 14,
          //           ),
          //         ),
          //       ),
          //     ],
          //     value: selectedValue,
          //     onChanged: (String? value) {
          //       setState(() {
          //         selectedValue = value;
          //       });
          //     },
          //     buttonStyleData: const ButtonStyleData(
          //       padding: EdgeInsets.symmetric(horizontal: 16),
          //       height: 40,
          //       width: 140,
          //     ),
          //     menuItemStyleData: const MenuItemStyleData(
          //       height: 40,
          //     ),
          //   ),
          // ),
          ),
    );
  }
}
