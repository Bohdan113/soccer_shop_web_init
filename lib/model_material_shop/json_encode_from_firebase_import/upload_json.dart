var jsonString =
    '''[{"id":"t","title":"AC Milan","description":"FC Milan shirt in this season","price":40,"imageUrl":"assets/images/tm.jpg","country":"Milan"},{"id":"t1","title":"Nike","description":"Nike t-Shirt Green","price":30,"imageUrl":"assets/images/tm1.jpg","country":"Milan"},{"id":"t2","title":"Nike","description":"Nike t-Shirt Red","price":40,"imageUrl":"assets/images/tm2.jpg","country":"Milan"},{"id":"t3","title":"Nike","description":"Nike t-Shirt Yellow","price":30,"imageUrl":"assets/images/tm3.jpg","country":"Poland"},{"id":"t4","title":"Man city","description":"FC Man city get this shirt in this season ","price":80,"imageUrl":"assets/images/tm4.jpg","country":"England"},{"id":"t5","title":"Man city","description":"FC Man city get this shirt in this season ","price":80,"imageUrl":"assets/images/tm5.jpg","country":"England"},{"id":"t6","title":"Dynamo Kyiv","description":"FC Dynamo Kyiv get this shirt in this season ","price":80,"imageUrl":"assets/images/tm6.jpg","country":"Ukraine"},{"id":"t8","title":"Ukraine T-shirt","description":"Country Ukraine get this shirt in this season girls ","price":800,"imageUrl":"assets/images/tm8.jpg","country":"Ukraine"},{"id":"hm1","title":"Гетри","description":"Червоні гетри Joma стрейч","price":10,"imageUrl":"assets/images/hm1.jpg","country":"Ukraine"},{"id":"hm2","title":"Гетри","description":"Жовті гетри Joma стрейч","price":10,"imageUrl":"assets/images/hm2.jpg","country":"Ukraine"},{"id":"hm3","title":"Гетри","description":"Жовті гетри Joma стрейч","price":30,"imageUrl":"assets/images/hm3.jpg","country":"Ukraine"},{"id":"hm4","title":"Гетри","description":"Зелені гетри Joma стрейч","price":10,"imageUrl":"assets/images/hm4.jpg","country":"Ukraine"},{"id":"hm5","title":"Гетри","description":"Сині гетри Joma стрейч","price":10,"imageUrl":"assets/images/hm5.jpg","country":"Ukraine"},{"id":"hm6","title":"Гетри","description":"Чорні гетри Joma стрейч","price":10,"imageUrl":"assets/images/hm6.jpg","country":"Ukraine"},{"id":"km1","title":"Футзалки Copa America","description":"Сині футзалки Copa America, шкіра, жовта підошва","price":100,"imageUrl":"assets/images/km1.jpg","country":"Germany"},{"id":"km2","title":"Футзалки Adidas","description":"Білі футзалки Adidas, шкіра, біла підошва","price":100,"imageUrl":"assets/images/km2.jpg","country":"England"},{"id":"km3","title":"Бутси Adidas","description":"Сині бутси Adidas, шкіра, пласмасові корки","price":70,"imageUrl":"assets/images/km3.jpg","country":"Spain"},{"id":"km5","title":"Бутси Nike","description":"Червоні бутси Nike, дермантін, пласмасові корки","price":99,"imageUrl":"assets/images/km5.jpg","country":"Germany"},{"id":"km6","title":"Бутси Nike","description":"Сині Бутси Nike, дермантін, пласмасові корки","price":90,"imageUrl":"assets/images/km6.jpg","country":"England"},{"id":"km7","title":"Бутси Coppa America","description":"Сині бутси Coppa America, шкіра, пласмасові корки","price":250,"imageUrl":"assets/images/km7.jpg","country":"Germany"},{"id":"f1","title":"Форма Seco","description":"Червона майка та шорти, Seco top","price":11,"imageUrl":"assets/images/m1.jpg","country":"Italia"},{"id":"f2","title":"Форма Seco","description":"Синя майка та шорти, Seco top","price":10,"imageUrl":"assets/images/m2.jpg","country":"Italia"},{"id":"f3","title":"Форма Seco","description":"Оранжева майка та шорти, Seco top","price":12,"imageUrl":"assets/images/m3.jpg","country":"Italia"},{"id":"f41","title":"Форма Seco","description":"Чорна майка та шорти, Seco top","price":12,"imageUrl":"assets/images/m41.jpg","country":"Ukraine"},{"id":"mm1","title":"М'яч Adidas","description":"Top soccer League Champion ball","price":1100,"imageUrl":"assets/images/mm1.jpg","country":"England"},{"id":"mm2","title":"М'яч Adidas","description":"Top soccer League Champion ball","price":1100,"imageUrl":"assets/images/mm2.jpg","country":"Ukraine"},{"id":"mm3","title":"М'яч Adidas","description":"Top soccer Real Madrid ball","price":100,"imageUrl":"assets/images/mm3.jpg","country":"Spain"},{"id":"mm4","title":"М'яч Adidas","description":"Top soccer ball","price":1,"imageUrl":"assets/images/mm4.jpg","country":"Ukraine"},{"id":"nm1","title":"Набор футболіста Joma","description":"Joma набор футболіста","price":500,"imageUrl":"assets/images/nm1.jpg","country":"Spain"},{"id":"nm2","title":"Набор футболіста Joma","description":"Joma набор футболіста","price":500,"imageUrl":"assets/images/nm2.jpg","country":"Spain"},{"id":"nm3","title":"Набор футболіста Joma","description":"Joma набор футболіста","price":500,"imageUrl":"assets/images/nm3.jpg","country":"Spain"},{"id":"nm4","title":"Набор футболіста Joma","description":"Joma набор футболіста","price":500,"imageUrl":"assets/images/nm4.jpg","country":"Spain"},{"id":"nm5","title":"Набор футболіста Joma","description":"Joma набор футболіста","price":500,"imageUrl":"assets/images/nm5.jpg","country":"Spain"},{"id":"qshm1","title":"Штани PSG","description":"Штани PSG в яких бігав Neymar","price":500,"imageUrl":"assets/images/shm1.jpg","country":"Spain"},{"id":"qshm2","title":"Штани Man City","description":"Штани Man City в яких бігав Jesus","price":500,"imageUrl":"assets/images/shm2.jpg","country":"England"},{"id":"sm1","title":"Шорти Nike","description":"Шорти Nike, синього кольору","price":50,"imageUrl":"assets/images/sm1.jpg","country":"Spain"},{"id":"sm2","title":"Шорти Nike","description":"Шорти Nike, голубого кольору","price":54,"imageUrl":"assets/images/sm2.jpg","country":"Spain"},{"id":"sm3","title":"Шорти Nike","description":"Шорти Nike, Білого кольору","price":12,"imageUrl":"assets/images/sm3.jpg","country":"Spain"},{"id":"sm5","title":"Шорти Nike","description":"Шорти Nike, червоного кольору ","price":25,"imageUrl":"assets/images/sm5.jpg","country":"Spain"},{"id":"sm6","title":"Шорти Nike","description":"Шорти Nike, оранжевого кольору","price":75,"imageUrl":"assets/images/sm6.jpg","country":"Spain"},{"id":"sm7","title":"Шорти Nike","description":"Шорти Nike, салатового кольору","price":19,"imageUrl":"assets/images/sm7.jpg","country":"Spain"},{"id":"xm1","title":"Кофта Nike","description":"Кофта Nike, чорно синього кольору","price":40,"imageUrl":"assets/images/xm1.jpg","country":"Spain"},{"id":"xm2","title":"Кофта Nike","description":"Кофта Nike, білого кольору","price":40,"imageUrl":"assets/images/xm2.jpg","country":"Spain"},{"id":"xm3","title":"Кофта Nike","description":"Кофта Nike, чорного кольору","price":40,"imageUrl":"assets/images/xm3.jpg","country":"Spain"},{"id":"xm4","title":"Кофта Man city","description":"Кофта Man city, білого кольору","price":40,"imageUrl":"assets/images/xm4.jpg","country":"Spain"},{"id":"t","title":"T-shirt Ukr","description":"Ukr t-Shtirt","price":100,"imageUrl":"assets/images/t-shirt.jpg","country":"Ukraine"}]''';

// getMaterialList() async {
//   var result =
//       await FirebaseFirestore.instance.collection('listMaterial').get();
//   QuerySnapshot querySnapshot = result;
//   print('result: $result');
//   print(querySnapshot.docs.length);
//   for (var i = 0; i < querySnapshot.docs.length; i++) {
//     jsonString = querySnapshot.docs[i].get('items');
//     print('firts print: $jsonString');
//   }
//   return jsonString;
// }

// class MaterialShopService with ChangeNotifier {
//   FirebaseFirestore? _instance;
//
//   List<MaterialShop> _list = [];
//
//   List<MaterialShop> get list => _list;
//
//   Future<void> getMaterialShopList() async {
//     _instance = FirebaseFirestore.instance;
//
//     CollectionReference listMaterial = _instance!.collection('listMaterial');
//
//     DocumentSnapshot snapshot = await listMaterial.doc(listMaterial.id).get();
//     var data = snapshot.data() as Map;
//     var listMaterialData = data['items'] as List<dynamic>; //listMaterial items
//     listMaterialData.forEach((element) {
//       _list.add(MaterialShop.fromJson(element));
//       print('_ $_list');
//     });
//   }

  //
  // List<MaterialShop> get itemsTSHORT =>
  //     items.where((element) =>
  //     element.id
  //         .split('')
  //         .first == 't').toList();
  //
  // List<MaterialShop> get itemsSHORTU =>
  //     items.where((element) =>
  //     element.id
  //         .split('')
  //         .first == 's').toList();
  //
  // List<MaterialShop> get itemsHETRU =>
  //     items.where((element) =>
  //     element.id
  //         .split('')
  //         .first == 'h').toList();
  //
  // List<MaterialShop> get itemsKOPY =>
  //     items.where((element) =>
  //     element.id
  //         .split('')
  //         .first == 'k').toList();
  //
  // List<MaterialShop> get itemsFORMA =>
  //     items.where((element) =>
  //     element.id
  //         .split('')
  //         .first == 'f').toList();
  //
  // List<MaterialShop> get itemsMYACH =>
  //     items.where((element) =>
  //     element.id
  //         .split('')
  //         .first == 'm').toList();
  //
  // List<MaterialShop> get itemsSHTANU =>
  //     items.where((element) =>
  //     element.id
  //         .split('')
  //         .first == 'q').toList();
  //
  // List<MaterialShop> get itemsNABOR =>
  //     items.where((element) =>
  //     element.id
  //         .split('')
  //         .first == 'n').toList();
  //
  // List<MaterialShop> get itemsKOFTA =>
  //     items.where((element) =>
  //     element.id
  //         .split('')
  //         .first == 'x').toList();

  // updateMaterialShop(
  //     {required List<MaterialShop> materialShop, bool notify = true}) {
  //   // list = materialShop;
  //   if (notify) notifyListeners();
  // }
  //
  // addStudent({required MaterialShop materialShop}) {
  //   list.add(materialShop);
  //   notifyListeners();
  // }
  //
  // MaterialShop findById(String id) {
  //   var result = list.firstWhere((prod) => prod.id == id);
  //   if (result != null) {
  //     return result;
  //   } else {
  //     result = 't' as MaterialShop;
  //     return result;
  //   }
  // }

// Future<StreamBuilder> getJson() async{
//   StreamBuilder(
//       stream: FirebaseFirestore.instance.collection('itemMaterial').snapshots(),
//       builder: (BuildContext context, AsyncSnapshot<QuerySnapshot?> snapshot) {
//     return
//       });
//
//   return ;
// }


// QuerySnapshot querySnapshot = getDriversList();
//
// class Event extends StatelessWidget {
//   const Event({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     QuerySnapshot querySnapshot = getDriversList();
//     return querySnapshot==null ? Center(child: CircularProgressIndicator(color: Colors.yellow)):Container(
//       height: MediaQuery.of(context).size.height,
//       child: ListView.builder(
//         itemCount: querySnapshot.docs.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Card(
//               child: ListTile(
//                 title: Text('LUL'),
//                 subtitle: Text('${querySnapshot.docs[index].get('items')}'),
//                 // trailing: Text('${querySnapshot!.docs[index].get('price')}'),
//                 // leading: CircleAvatar(backgroundImage: AssetImage('${querySnapshot!.docs[index].get('imageUrl')}'),radius: 5,),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }


// QuerySnapshot eventsQuery = await ref
//       .where("time", isGreaterThan: new DateTime.now().millisecondsSinceEpoch)
//       .where("food", isEqualTo: true)
//       .getDocuments();
//
//   HashMap<String, AustinFeedsMeEvent> eventsHashMap = new HashMap<String, AustinFeedsMeEvent>();
//
//   eventsQuery.documents.forEach((document) {
//     eventsHashMap.putIfAbsent(document['id'], () => new AustinFeedsMeEvent(
//         name: document['name'],
//         time: document['time'],
//         description: document['description'],
//         url: document['event_url'],
//         photoUrl: _getEventPhotoUrl(document['group']),
//         latLng: _getLatLng(document)));
//   });
//
//   return eventsHashMap.values.toList();
// }
// }