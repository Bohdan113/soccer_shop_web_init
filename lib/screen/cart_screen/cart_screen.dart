import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_shop_web/model_material_shop/provider/cart_model_provider.dart';
import 'package:soccer_shop_web/model_material_shop/provider/order_model_provider.dart';

import '../components/app_bar.dart';
import 'list_view_cart_build.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);
  static const routName = '/cart_screen';

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var _value = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final cart = context.read<CartModel>();
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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/logosoccerbig.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                witgets: SizedBox(),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(
                      flex: 2,
                    ),
                    Text(
                      'Загальна сума:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Chip(
                      label: Text(
                        ' \$${cart.totalAmount.toString()}',
                        style: TextStyle(fontSize: 25),
                      ),
                      backgroundColor: Theme.of(context).backgroundColor,
                    ),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Купити зараз'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      onTap: () {
                        // ignore: unnecessary_statements
                        Provider.of<OrderModel>(context, listen: false)
                            .addOrder(
                          cart.items.values.toList(),
                          cart.totalAmount,
                        );
                        cart.clear();
                      },
                    ),
                    Spacer(flex: 3),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 100,right: 100),
                child: Table(
                  border: TableBorder.all(color: Colors.grey,borderRadius: BorderRadius.circular(5),width: 2),
                  children: [
                    TableRow(
                      children: [
                        Text('Товар',
                            style: TextStyle(
                                color: Colors.white, fontSize: 20)),
                        Text('Опис',
                            style: TextStyle(
                                color: Colors.white, fontSize: 20)),
                        Text('Ціна',
                            style: TextStyle(
                                color: Colors.white, fontSize: 20)),
                        Text('Кількість',
                            style: TextStyle(
                                color: Colors.white, fontSize: 20)),
                        Text('Вартість',
                            style: TextStyle(
                                color: Colors.white, fontSize: 20)),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height/1.4,
                child: ListView.builder(
                  itemCount: cart.items.length,
                  itemBuilder: (context, index) {
                    return CartItem(
                        id: cart.items.values.toList()[index].id,
                        price: cart.items.values.toList()[index].price,
                        description:
                            cart.items.values.toList()[index].description,
                        title: cart.items.values.toList()[index].title,
                        imageUrl:
                            cart.items.values.toList()[index].imageUrl,
                        productId: cart.items.keys.toList()[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
