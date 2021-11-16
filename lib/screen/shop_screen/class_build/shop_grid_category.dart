//Тут побудував клас всіх категорій (all, футболки, шорти, штани і т.д)

import 'package:firebase_auth/firebase_auth.dart';


import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:soccer_shop_web/screen/shop_screen/shop_screen_detail.dart';
import 'package:soccer_shop_web/services/material_shop_firestore.dart';

import 'shop_product_gridview_category.dart';

class ShopGridCategory extends StatefulWidget {

  @override
  State<ShopGridCategory> createState() => _ShopGridCategoryState();
}

class _ShopGridCategoryState extends State<ShopGridCategory> {

  @override
  void initState() {
    context.read<MaterialShopService>().getMaterialShopList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _provider = Provider.of<MaterialShopService>(context);
    var user = FirebaseAuth.instance.currentUser;
    final bool isLoggedIn = user == null;
    return Container(
      width: size.width / 1.5,
      height: size.height *2,
      child: GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.all(20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: [
          Card(
            color: Colors.green,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(
                  ShopScreenDetail.routName,
                );
                },
              splashColor: Colors.transparent,
              hoverColor: Colors.white.withOpacity(0.7),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            'Весь Асортимент',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),//all
            Card(
              color: Colors.green,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ShopProductGridViewCategory(
                      list: _provider.itemsTSHORT,
                    ),
                  ),
                ),
                splashColor: Colors.transparent,
                hoverColor: Colors.white.withOpacity(0.7),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        // ignore: prefer_const_constructors
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              'Футболки',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            width: size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/tm4.jpg'),
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ), //t-stirt
            Card(
              color: Colors.green,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ShopProductGridViewCategory(
                      list: _provider.itemsSHORTU,
                    ),
                  ),
                ),
                splashColor: Colors.transparent,
                hoverColor: Colors.white.withOpacity(0.7),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        // ignore: prefer_const_constructors
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              'Шорти',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            width: size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/sm2.jpg'),
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ), //horti
            Card(
              color: Colors.green,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ShopProductGridViewCategory(
                    list: _provider.itemsHETRU,
                  ),
                ),
              ),
                splashColor: Colors.transparent,
                hoverColor: Colors.white.withOpacity(0.7),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        // ignore: prefer_const_constructors
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              'Гетри',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            width: size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/hm5.jpg'),
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ), //hentru
            Card(
              color: Colors.green,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ShopProductGridViewCategory(
                      list: _provider.itemsKOFTA,
                    ),
                  ),
                ),
                splashColor: Colors.transparent,
                hoverColor: Colors.white.withOpacity(0.7),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        // ignore: prefer_const_constructors
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              'Кофти',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            width: size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/xm1.jpg'),
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ), //Koftu
            Card(
              color: Colors.green,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ShopProductGridViewCategory(
                      list: _provider.itemsKOPY,
                    ),
                  ),
                ),
                splashColor: Colors.transparent,
                hoverColor: Colors.white.withOpacity(0.7),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        // ignore: prefer_const_constructors
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              'Бутси',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            width: size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/km3.jpg'),
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ), //bytsu
            Card(
              color: Colors.green,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ShopProductGridViewCategory(
                  list: _provider.itemsMYACH,
                ),
              ),
            ),
                splashColor: Colors.transparent,
                hoverColor: Colors.white.withOpacity(0.7),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        // ignore: prefer_const_constructors
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              '''Мя'ч''',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            width: size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/mm2.jpg'),
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ), //miach
            Card(
              color: Colors.green,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ShopProductGridViewCategory(
                      list: _provider.itemsNABOR,
                    ),
                  ),
                ),
                splashColor: Colors.transparent,
                hoverColor: Colors.white.withOpacity(0.7),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        // ignore: prefer_const_constructors
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              'Набор футболіста',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            width: size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/nm5.jpg'),
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ), //nabor
          isLoggedIn? Container() :Card(
              color: Colors.green,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ShopProductGridViewCategory(
                      list: _provider.itemsSHTANU,
                    ),
                  ),
                ),
                splashColor: Colors.transparent,
                hoverColor: Colors.white.withOpacity(0.7),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        // ignore: prefer_const_constructors
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              'Штани',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            width: size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/shm2.jpg'),
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ), //shtanu
        ],
      ),
    );
  }
}
