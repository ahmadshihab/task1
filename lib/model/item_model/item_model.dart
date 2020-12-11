library type_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:task1_app/model/serializer/serializer.dart';

part 'item_model.g.dart';

abstract class ItemModel implements Built<ItemModel, ItemModelBuilder> {
  // fields go here

  int get id;
  String get title;

  ItemModel._();

  factory ItemModel([updates(ItemModelBuilder b)]) = _$ItemModel;

  String toJson() {
    return json.encode(serializers.serializeWith(ItemModel.serializer, this));
  }

  static ItemModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        ItemModel.serializer, json.decode(jsonString));
  }

  static Serializer<ItemModel> get serializer => _$itemModelSerializer;
}
