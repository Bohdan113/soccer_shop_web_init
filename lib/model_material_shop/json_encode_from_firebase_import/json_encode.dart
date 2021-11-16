// import 'dart:convert';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:soccer_shop_web/model_material_shop/json_encode_from_firebase_import/upload_json.dart';
//
// import '../model_material_shop.dart';
//
// // class MainScreen extends StatelessWidget {
// //   const MainScreen({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     var list = [];
// //     for (int i = 0; i < items.length; i++)
// //       list.add({
// //         "country":
// //         items.toList()[i].country,
// //         "id": items.toList()[i].id,
// //         "title": items.toList()[i].title,
// //         "description": items.toList()[i].description,
// //         "price": items.toList()[i].price,
// //         "imageUrl": items.toList()[i].imageUrl,
// //       });
// //     // var map = list.toSet();
// //     // print('$map\n $list');
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Center(
// //           child: Text('Json and HTTP Train'),
// //         ),
// //       ),
// //       body: Padding(
// //         padding: EdgeInsets.only(top: 20),
// //         child: SafeArea(
// //           child: JsonExampleProvider(
// //             coder: JsonExampleCoder(),
// //             child: Column(
// //               children: [
// //                 ElevatedButton(onPressed: () {
// //                   FirebaseFirestore.instance.collection('listMaterial').add({'items': FieldValue.arrayUnion(list)});
// //                 }, child: Text('Add data'),),
// //                 const ButtonWidget(),
// //               ],
// //             ),
// //           ),
// //         ),
// //         // ),StreamBuilder(
// //         //     stream: FirebaseFirestore.instance.collection('list').snapshots(),
// //         //     builder: (BuildContext context, AsyncSnapshot<QuerySnapshot?> snapshot) {
// //         //       if (!snapshot.hasData) print('НЕМА ЗАПИСІВ');
// //         //       return !snapshot.hasData? Center(child: CircularProgressIndicator(color: Colors.black,)) : ListView.builder(
// //         //           itemCount: snapshot.data!.docs.length,
// //         //           itemBuilder: (BuildContext context,int index) {
// //         //             return Padding(
// //         //                 padding: EdgeInsets.only(top: 20),
// //         //                 child: Card(
// //         //                   child: ListTile(
// //         //                     key: Key(snapshot.data!.docs[index].id),
// //         //                     title: Text(snapshot.data!.docs[index].get('itemsData').toString()),
// //         //                   ),
// //         //                 ));
// //         //           });
// //         //     }),
// //       ),
// //     );
// //   }
// // }
// class MainScreen extends StatefulWidget {
//   const MainScreen({Key? key}) : super(key: key);
//
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {
//
//   @override
//   void initState() {
//     super.initState();
//     // jsonString = getMaterialList();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Firebase FireStore'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: SafeArea(
//           child: JsonExampleProvider(
//             coder: JsonExampleCoder(),
//             child: const ButtonWidget(),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class ButtonWidget extends StatelessWidget {
//   const ButtonWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//           ElevatedButton(
//             onPressed: () => JsonExampleProvider.read(context)?.coder.encode(),
//             child: const Text('Кодировать'),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           ElevatedButton(
//             onPressed: () => JsonExampleProvider.read(context)?.coder.decode(),
//             child: const Text('Декодировать'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class JsonExampleProvider extends InheritedWidget {
//   final JsonExampleCoder coder;
//
//   const JsonExampleProvider({
//     Key? key,
//     required this.coder,
//     required Widget child,
//   }) : super(
//           key: key,
//           child: child,
//         );
//
//   static JsonExampleProvider? watch(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<JsonExampleProvider>();
//   }
//
//   static JsonExampleProvider? read(BuildContext context) {
//     final widget = context
//         .getElementForInheritedWidgetOfExactType<JsonExampleProvider>()
//         ?.widget;
//     return widget is JsonExampleProvider ? widget : null;
//   }
//
//   @override
//   bool updateShouldNotify(JsonExampleProvider oldWidget) {
//     return true;
//   }
// }
//
// class JsonExampleCoder {
//   void encode() {
//     final jsonStringa = jsonEncode(MaterialShopService().list.map((e) => e.toJson()).toList());
//     print(jsonStringa);
//     // final jsonStrng = jsonEncode(humans.map((e) => e.toJson()).toList());
//     // print(jsonStrng);
//   }
//
// void decode()  {
//   final json = jsonDecode(jsonString) as List<dynamic>;
//   final material = json.map((e) => MaterialShop.fromJson(e as Map<String, dynamic>)).toList();
//   print(material);
// // final json = jsonDecode(jsonString) as List<dynamic>;
// // final users = json
// //     .map<Human>((dynamic e) => Human.fromJson(e as Map<String, dynamic>))
// //     .toList();
// // @override
// // String toString(){
// //   return users.toString();
// // }
// // print(users);
// }
// }
