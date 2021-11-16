import 'package:flutter/material.dart';
import 'package:soccer_shop_web/screen/shop_screen/class_build/products_detail_screen.dart';
import 'package:soccer_shop_web/screen/login_and_auth_screens/authentication_screen.dart';
import 'package:soccer_shop_web/screen/login_and_auth_screens/login_sceern.dart';
import 'package:soccer_shop_web/screen/shop_screen/shop_screen.dart';
import 'package:soccer_shop_web/screen/shop_screen/shop_screen_detail.dart';

import 'screen/cart_screen/cart_screen.dart';
import 'screen/contacts_screen/contacts_screen.dart';
import 'screen/home_screen.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          splashColor:  Color(0xffFFC600),
          //color for scrollbar
          highlightColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,

        ),
        // ignore: prefer_const_constructors
        initialRoute: HomeScreen.routName,
        routes: {
          HomeScreen.routName: (context) => HomeScreen(),
          ShopScreen.routName: (context) => ShopScreen(),
          ContactsScreen.routName: (context) => ContactsScreen(),
          ShopScreenDetail.routName: (context) => ShopScreenDetail(),
          ProductsDetailScreen.routeName: (context) => ProductsDetailScreen(),
          LoginScreen.routName: (context) => LoginScreen(),
          Authentication.routName: (context) => Authentication(),
          CartScreen.routName: (context) => CartScreen(),
          // '/json': (context) => MainScreen(),
        });
  }
}
