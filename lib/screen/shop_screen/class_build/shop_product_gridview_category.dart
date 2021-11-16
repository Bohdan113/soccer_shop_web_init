import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_shop_web/model_material_shop/provider/cart_model_provider.dart';
import 'package:soccer_shop_web/model_material_shop/model_material_shop.dart';
import 'package:soccer_shop_web/screen/components/app_bar.dart';
import 'package:soccer_shop_web/screen/components/bottom_panel.dart';
import 'package:soccer_shop_web/services/material_shop_firestore.dart';

class ShopProductGridViewCategory extends StatefulWidget {
  final List<MaterialShop> list;
  ShopProductGridViewCategory(
      {Key? key,required this.list,})
      : super(key: key);

  @override
  _ShopProductGridViewCategoryState createState() =>
      _ShopProductGridViewCategoryState();
}

class _ShopProductGridViewCategoryState
    extends State<ShopProductGridViewCategory> {

  _ShopProductGridViewCategoryState();

  // @override
  // void initState() {
  //     context.read<MaterialShopService>().getMaterialShopList();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cart = Provider.of<CartModel>(context);
    return Scaffold(
      body: widget.list.isEmpty?Container(height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logosoccerbig.png'),
              fit: BoxFit.cover,
            ),
          ),child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                witgets: SizedBox(),
              ),
              Container(
                child: SingleChildScrollView(child: CircularProgressIndicator())
              ),
            ],
          ),
        ),):Container(
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
              Container(
                height: size.height,
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Container(
                            height: size.height,
                            width: size.width,
                            child: Consumer<MaterialShopService>(
                                builder: (context, _provider, child) {
                              return StreamBuilder<MaterialShopService>(
                                  stream: null,
                                  builder: (context, snapshot) {
                                    return GridView.builder(
                                      gridDelegate:
                                          SliverGridDelegateWithMaxCrossAxisExtent(
                                              maxCrossAxisExtent: 350,
                                              mainAxisExtent: 350,
                                              crossAxisSpacing: 20,
                                              mainAxisSpacing: 20),
                                      itemCount: widget.list.length,
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {
                                            Navigator.of(context).pushNamed(
                                              '/product_detail',
                                              arguments: widget.list[index].id,
                                            );
                                          },
                                          child: Stack(
                                            children: [
                                              Card(
                                                  elevation: 5,
                                                  shape: UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                          width: 80,
                                                          color: Colors.white
                                                              .withOpacity(
                                                                  0.7)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              widget.list[
                                                                      index]
                                                                  .imageUrl),
                                                          fit: BoxFit.cover),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                  ),
                                                  color: Colors.transparent),
                                              Container(
                                                height: size.height,
                                                padding: EdgeInsets.all(5),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    IconButton(
                                                      icon: Icon(Icons.shopping_cart),
                                                      onPressed: () => cart.addItem(widget.list[index].id, widget.list[index].price, widget.list[index].title,widget.list[index].imageUrl),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Text(
                                                        '${widget.list[index].title}',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Text(
                                                          '${widget.list[index].price} \$'),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  });
                            })),
                      ],
                    ),
                  ],
                ),
              ),
              BottomPanel(),
            ],
          ),
        ),
      ),
    );
  }
}
