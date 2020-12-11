library type_list;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:floor/floor.dart';
import 'package:task1_app/model/serializer/serializer.dart';

import 'item_model.dart';

part 'item_list.g.dart';

abstract class ItemList implements Built<ItemList, ItemListBuilder> {
  // fields go here

  @nullable
  @BuiltValueField(wireName: "BrakeType")
  BuiltList<ItemModel> get brakeType;

  @nullable
  @BuiltValueField(wireName: "Type")
  BuiltList<ItemModel> get discipline;

  @nullable
  @BuiltValueField(wireName: "FrameMaterial")
  BuiltList<ItemModel> get frameMaterial;

  @nullable
  @BuiltValueField(wireName: "RidingStyle")
  BuiltList<ItemModel> get ridingStyle;

  @nullable
  @BuiltValueField(wireName: "Models")
  BuiltList<ItemModel> get models;

  @nullable
  @BuiltValueField(wireName: "Brands")
  BuiltList<ItemModel> get brands;

  @nullable
  @BuiltValueField(wireName: "Flavors")
  BuiltList<ItemModel> get flavors;

  @nullable
  @BuiltValueField(wireName: "NutritionBrands")
  BuiltList<ItemModel> get nutritionBrands;

  @nullable
  @BuiltValueField(wireName: "NutritionModels")
  BuiltList<ItemModel> get nutritionModel;

  ItemList._();

  factory ItemList([updates(ItemListBuilder b)]) = _$ItemList;

  String toJson() {
    return json.encode(serializers.serializeWith(ItemList.serializer, this));
  }

  static ItemList fromJson(String jsonString) {
    return serializers.deserializeWith(
        ItemList.serializer, json.decode(jsonString));
  }

  static Serializer<ItemList> get serializer => _$itemListSerializer;
}
