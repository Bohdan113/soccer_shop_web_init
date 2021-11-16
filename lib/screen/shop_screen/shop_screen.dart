import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soccer_shop_web/screen/components/bottom_panel.dart';
import '../components/app_bar.dart';
import 'class_build/shop_grid_category.dart';

class ShopScreen extends StatelessWidget {
  static const routName = '/shop';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logosoccerbig.png'),
              fit: BoxFit.cover,
            ),
          ),
        child: RawScrollbar(
          thumbColor: Colors.white,
          // isAlwaysShown: true,
          timeToFade:  Duration(seconds: 5),
          radius: Radius.circular(20),
          child: ListView(
            children: [
              CustomAppBar(witgets: SizedBox()),
              Container(
                height: size.height *2,
                width: size.width,
                child: ShopGridCategory(),
              ),
              BottomPanel(),
            ],
          ),
        ),
      ),
    );
  }
}
