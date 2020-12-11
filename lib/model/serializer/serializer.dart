library serializer;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';
import 'package:task1_app/model/item_model/item_list.dart';

import 'package:task1_app/model/item_model/item_model.dart';

part 'serializer.g.dart';

@SerializersFor(const [ItemModel, ItemList])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..addBuilderFactory(
          (FullType(
            BuiltList,
            [
              const FullType(ItemModel),
            ],
          )),
          () => ListBuilder<ItemModel>())
      ..addBuilderFactory(
          (FullType(
            BuiltList,
            [
              const FullType(ItemList),
            ],
          )),
          () => ListBuilder<ItemList>()))
    .build();
