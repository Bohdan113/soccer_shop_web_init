import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:soccer_shop_web/model_material_shop/model_material_shop.dart';

class MaterialShopService with ChangeNotifier {
  FirebaseFirestore? _instance;

  List<MaterialShop> _list = [];

  Future<void> getMaterialShopList() async {
    _instance = FirebaseFirestore.instance;
    CollectionReference listMaterial = _instance!.collection('listMaterial');
    List<MaterialShop> _getData =[];


    DocumentSnapshot snapshot = await listMaterial.doc('JloRNC3f2WRRi5NGmCai').get();
    var data = snapshot.data() as Map;
    var listMaterialData = data['items'] as List<dynamic>; //listMaterial items

    listMaterialData.forEach((element) {
      _getData.add(MaterialShop.fromJson(element));
    });
    _list = _getData;
    print('_list: $_list');
    notifyListeners();
  }

  List<MaterialShop> get items => _list;
  List<MaterialShop> get itemsTSHORT => items.where((element) => element.id.split('').first == 't').toList();
  List<MaterialShop> get itemsSHORTU => items.where((element) => element.id.split('').first == 's').toList();
  List<MaterialShop> get itemsHETRU => items.where((element) => element.id.split('').first == 'h').toList();
  List<MaterialShop> get itemsKOPY => items.where((element) => element.id.split('').first == 'k').toList();
  List<MaterialShop> get itemsFORMA => items.where((element) => element.id.split('').first == 'f').toList();
  List<MaterialShop> get itemsMYACH => items.where((element) => element.id.split('').first == 'm').toList();
  List<MaterialShop> get itemsSHTANU => items.where((element) => element.id.split('').first == 'q').toList();
  List<MaterialShop> get itemsNABOR => items.where((element) => element.id.split('').first == 'n').toList();
  List<MaterialShop> get itemsKOFTA => items.where((element) => element.id.split('').first == 'x').toList();


  MaterialShop findById(String id) {
    var result = items.firstWhere((prod) => prod.id == id);
    if (result != null) {
      return result;
    } else {
      result = 't' as MaterialShop;
      return result;
    }
  }
}