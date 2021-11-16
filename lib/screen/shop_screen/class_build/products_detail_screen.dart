import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_shop_web/screen/components/app_bar.dart';
import 'package:soccer_shop_web/services/material_shop_firestore.dart';
import '../../../constant.dart';
import '../../../model_material_shop/provider/cart_model_provider.dart';

class ProductsDetailScreen extends StatefulWidget {
  ProductsDetailScreen({Key? key}) : super(key: key);
  static const routeName = '/product_detail';

  @override
  _ProductsDetailScreenState createState() => _ProductsDetailScreenState();
}

class _ProductsDetailScreenState extends State<ProductsDetailScreen> {
  var _value = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final cart = Provider.of<CartModel>(context, listen: false);
    final productId = ModalRoute.of(context)!.settings.arguments as String; //id;
    final loadedProduct =
        Provider.of<MaterialShopService>(context, listen: false)
            .findById(productId);

    void _increment() {
      setState(() {
        _value++;
      });
      // ignore: avoid_print
      print(_value);
    }

    void _decrement() {
      setState(() {
        _value--;
      });
      if (_value <= 0) {
        _value = 1;
      }
    }

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.green.withOpacity(0.7),
          // image: DecorationImage(
          //   image: AssetImage('assets/images/logosoccerbig.png'),
          //   fit: BoxFit.cover,
          // ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                witgets: IconButton(
                  padding: EdgeInsets.only(right: 10),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(25),
                child: Text(
                    '${loadedProduct.title}, ${loadedProduct.description}',
                    style:
                        TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: size.width/3,
                          padding: EdgeInsets.all(25),
                          child: Card(
                              shape: OutlineInputBorder(),
                              child: Image(
                                  image: AssetImage(loadedProduct.imageUrl))),
                        ),
                      ],
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: size.width / 3.7,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${loadedProduct.price} \$ Доларів',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30)),
                                  TextButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      shadowColor: MaterialStateProperty.all(Colors.white),
                                      overlayColor: MaterialStateProperty.all(Colors.black),
                                    ),
                                    child: Text(
                                      'Найшли дешевше?',
                                      style: TextStyle(
                                          color: Colors.red,
                                          overflow: TextOverflow.ellipsis,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ), //price
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              shape: OutlineInputBorder(),
                              elevation: 9,
                              child: Row(
                                children: [
                                  SizedBox(width: 20),
                                  Text('Кількість : '),
                                  Text('$_value'),
                                  Column(
                                    children: [
                                      IconButton(
                                        onPressed: _increment,
                                        icon: Icon(Icons.arrow_drop_up),
                                        iconSize: 15,
                                        splashRadius: 10,
                                      ),
                                      IconButton(
                                          splashRadius: 10,
                                          iconSize: 15,
                                          onPressed: _decrement,
                                          icon: Icon(Icons.arrow_drop_down)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ), //value
                          OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.grey.shade200),
                              overlayColor:
                                  MaterialStateProperty.all(kTextcolor),
                              fixedSize: MaterialStateProperty.all(
                                  Size(size.width / 3.7, 50)),
                              textStyle: MaterialStateProperty.all(
                                  TextStyle(color: Colors.white)),
                              shape: MaterialStateProperty.all(
                                ContinuousRectangleBorder(
                                    side: BorderSide(),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ), //Таблиця розмірів
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.table_rows_outlined,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Таблиця розмірів',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              'Розмір:',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: OutlinedButton(
                              onPressed: () => cart.addItem(
                                  loadedProduct.id,
                                  loadedProduct.price,
                                  loadedProduct.title,
                                  loadedProduct.imageUrl),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(kTextcolor),
                                overlayColor:
                                    MaterialStateProperty.all(Colors.black),
                                fixedSize: MaterialStateProperty.all(
                                    Size(size.width / 3.7, 45)),
                                textStyle: MaterialStateProperty.all(
                                    TextStyle(color: Colors.white)),
                                shape: MaterialStateProperty.all(
                                  ContinuousRectangleBorder(
                                      side: BorderSide(),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ), //Таблиця розмірів
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.shopping_basket_outlined,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'В корзину'.toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: OutlinedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(kTextcolor),
                                overlayColor:
                                    MaterialStateProperty.all(Colors.black),
                                fixedSize: MaterialStateProperty.all(
                                    Size(size.width / 3.7, 45)),
                                textStyle: MaterialStateProperty.all(
                                    TextStyle(color: Colors.white)),
                                shape: MaterialStateProperty.all(
                                  ContinuousRectangleBorder(
                                      side: BorderSide(),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ), //Таблиця розмірів
                              child: Text(
                                'Оплата частинами',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: OutlinedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.grey),
                                overlayColor:
                                    MaterialStateProperty.all(Colors.black),
                                fixedSize: MaterialStateProperty.all(
                                    Size(size.width / 3.7, 45)),
                                textStyle: MaterialStateProperty.all(
                                    TextStyle(color: Colors.white)),
                                shape: MaterialStateProperty.all(
                                  ContinuousRectangleBorder(
                                      side: BorderSide(),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: kTextcolor,
                                    size: 25,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Купити в один клік',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),//купити в один клік кнопка
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
