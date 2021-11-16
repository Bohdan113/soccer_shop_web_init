// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_material_shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MaterialShop _$MaterialShopFromJson(Map<String, dynamic> json) => MaterialShop(
      country: json['country'] as String,
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$MaterialShopToJson(MaterialShop instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'country': instance.country,
    };
