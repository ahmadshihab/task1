library products_event;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:task1_app/data/db_helper/entite/item.dart';

part 'products_event.g.dart';

abstract class ProductsEvent {}

abstract class GetProducts extends ProductsEvent
    implements Built<GetProducts, GetProductsBuilder> {
  // fields go here

  GetProducts._();

  factory GetProducts([updates(GetProductsBuilder b)]) = _$GetProducts;
}

abstract class ClearError extends ProductsEvent
    implements Built<ClearError, ClearErrorBuilder> {
  // fields go here

  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}

abstract class GetMenu extends ProductsEvent
    implements Built<GetMenu, GetMenuBuilder> {
  // fields go here

  GetMenu._();

  factory GetMenu([updates(GetMenuBuilder b)]) = _$GetMenu;
}

abstract class AddItem extends ProductsEvent
    implements Built<AddItem, AddItemBuilder> {
  // fields go here

  Item get item;

  AddItem._();

  factory AddItem([updates(AddItemBuilder b)]) = _$AddItem;
}
