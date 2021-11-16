import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:soccer_shop_web/model_material_shop/provider/order_model_provider.dart';
import 'model_material_shop/provider/cart_model_provider.dart';
import 'package:firebase_core/firebase_core.dart';

import 'my_app.dart';
import 'services/material_shop_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) {
    runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<MaterialShopService>(
            create: (_) => MaterialShopService()),
        ChangeNotifierProvider(
          create: (ctx) => CartModel(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => OrderModel(),
        ),
      ],
      child: MyApp(),
    ));
  });
}
