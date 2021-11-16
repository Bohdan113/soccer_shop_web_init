
import 'package:flutter/material.dart';

import 'components/app_bar.dart';
import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  static const routName = '/';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/miach.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              witgets: SizedBox(),
            ),
            Spacer(),
            // It will cover 1/3 of free spaces
            Body(),
            Spacer(
              flex: 2,
            ),
            // it will cover 2/3 of free spaces
          ],
        ),
      ),
    );
  }
}
