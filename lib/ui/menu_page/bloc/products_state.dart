library products_state;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:task1_app/data/db_helper/entite/item.dart';
import 'package:task1_app/model/item_model/item_list.dart';

part 'products_state.g.dart';

abstract class ProductsState
    implements Built<ProductsState, ProductsStateBuilder> {
  // fields go here

  String get error;

  bool get isLoading;

  @nullable
  ItemList get menus;

  BuiltList<Item> get items;

  ProductsState._();

  factory ProductsState([updates(ProductsStateBuilder b)]) = _$ProductsState;

  factory ProductsState.initail() {
    return ProductsState((b) => b
      ..error = ""
      ..isLoading = true
      ..items = null);
  }
}
