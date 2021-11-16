import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_shop_web/model_material_shop/provider/cart_model_provider.dart';
import 'package:soccer_shop_web/screen/shop_screen/class_build/products_detail_screen.dart';
import 'package:soccer_shop_web/services/material_shop_firestore.dart';

class ShopCategoryAllProducts extends StatefulWidget {
  const ShopCategoryAllProducts({Key? key}) : super(key: key);

  @override
  _ShopCategoryAllProductsState createState() => _ShopCategoryAllProductsState();
}

class _ShopCategoryAllProductsState extends State<ShopCategoryAllProducts> {

  @override
  void initState() {
    context.read<MaterialShopService>().getMaterialShopList();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context, listen: false);
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width ,
      padding: EdgeInsets.all(20),
      child: Consumer<MaterialShopService>(
          builder: (context, _provider, child) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 350,
                  mainAxisExtent: 350,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: _provider.items.length,
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      ProductsDetailScreen.routeName,
                      arguments: _provider.items[i].id,
                    );
                  },
                  child: Stack(
                    children: [
                      Card(
                          elevation: 5,
                          shape: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 80, color: Colors.white.withOpacity(0.7)),
                              borderRadius: BorderRadius.circular(15)),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage(_provider.items[i].imageUrl),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          color: Colors.transparent),
                      Container(
                        height: size.height,
                        padding: EdgeInsets.all(5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: Icon(Icons.shopping_cart),
                              onPressed: () => cart.addItem(_provider.items[i].id, _provider.items[i].price, _provider.items[i].title,_provider.items[i].imageUrl),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text('${_provider.items[i].title}',style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text('${_provider.items[i].price} \$'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
      ),
    );
  }
}
