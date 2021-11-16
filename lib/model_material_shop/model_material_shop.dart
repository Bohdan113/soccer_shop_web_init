import 'package:json_annotation/json_annotation.dart';

part 'model_material_shop.g.dart';

@JsonSerializable()
class MaterialShop {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final String country;

  MaterialShop(
      {required this.country,
      required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.imageUrl});


  factory MaterialShop.fromJson(Map<String, dynamic> json) =>_$MaterialShopFromJson(json);

  Map<String, dynamic> toJson() =>_$MaterialShopToJson(this);

  @override
  String toString() {
    return [id,description,title,imageUrl,country,price].toString();
  }

}

