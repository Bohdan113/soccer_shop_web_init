import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_shop_web/model_material_shop/provider/cart_model_provider.dart';

class CartItem extends StatefulWidget {
  final String id;
  final String  productId;
  final double price;
  final int description;
  final String title;
  final String imageUrl;

  CartItem({required this.id,required  this.price,required  this.description,required  this.title,required  this.productId,required this.imageUrl});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  var _value = 1;
  var _cost = 0;
  @override
  Widget build(BuildContext context) {
    var prices = '${widget.price}';
    var price = int.tryParse(prices);
    void _increment() {
      setState(() {
        _value++;
      });
      // ignore: avoid_print
      print(_value);
    }
_cost =  _value * price!;
    void _decrement() {
      setState(() {
        _value--;
      });
      if (_value <= 0) {
        _value = 1;
      }
    }
    return Column(
      children: [
        SizedBox(height: 5),
        Container(
          color: Colors.black38,
          padding: EdgeInsets.only(left: 100,right: 100),
          child: Column(
              children: [
                Table(
                  border: TableBorder.all(color: Colors.grey,borderRadius: BorderRadius.circular(5)),
                  children: [
                    TableRow(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                          child:
                          Image.asset(widget.imageUrl,),clipBehavior: Clip.hardEdge
                          ,),
                        Text('${widget.title}',
                            style: TextStyle(
                                color: Colors.white, fontSize: 20)),
                        Text('${widget.price}',
                            style: TextStyle(
                                color: Colors.white, fontSize: 20)),
                        Card(
                          shape: OutlineInputBorder(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: _decrement,
                                    icon: Icon(Icons.arrow_left),
                                    iconSize: 15,
                                    splashRadius: 10,
                                  ),
                                  Text('$_value'),
                                  IconButton(
                                      splashRadius: 10,
                                      iconSize: 15,
                                      onPressed: _increment,
                                      icon: Icon(Icons.arrow_right)),
                                ],
                              ),
                              IconButton(key: ValueKey(widget.id),onPressed: () => Provider.of<CartModel>(context,listen: false).removeItem(widget.productId), icon: Icon(Icons.delete))
                            ],
                          ),
                        ),
                        Text('$_cost\$',
                            style: TextStyle(
                                color: Colors.white, fontSize: 20)),
                      ],
                    ),
                  ],
                ),
              ]),
        ),
      ],
    );
  }
}

/*Padding(
      padding: EdgeInsets.all(8.0),
      child: Dismissible(
        key: ValueKey(id),
        background: Container(
          color: Theme.of(context).errorColor,
          child: Icon(
            Icons.delete,
            color: Colors.white,
            size: 40,
          ),
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: 20),
        ),
        direction: DismissDirection.endToStart,
        onDismissed: (direction) {
          Provider.of<Cart>(context,listen: false).removeItem(productId);
        },
        child: Card(
          margin: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: FittedBox(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('\$$price'),
                ),
              ),
            ),
            title: Text(title),
            subtitle: Text('total: \$${price * quantity}'),
            trailing: Text('$quantity x'),
          ),
          elevation: 4,
        ),
      ),
    );*/