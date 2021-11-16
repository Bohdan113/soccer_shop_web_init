import 'package:flutter/material.dart';
import '../../constant.dart';

class MenuItem extends StatefulWidget {
  final String title;
  final Function press;


  // ignore: prefer_const_constructors_in_immutables
  MenuItem({
    required this.title,
    required this.press,
  });

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.press();
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          widget.title.toUpperCase(),
          style: const TextStyle(
            color: kTextcolor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
