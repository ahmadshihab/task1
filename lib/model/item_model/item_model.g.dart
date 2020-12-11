// GENERATED CODE - DO NOT MODIFY BY HAND

part of type_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemModel> _$itemModelSerializer = new _$ItemModelSerializer();

class _$ItemModelSerializer implements StructuredSerializer<ItemModel> {
  @override
  final Iterable<Type> types = const [ItemModel, _$ItemModel];
  @override
  final String wireName = 'ItemModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ItemModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ItemModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ItemModel extends ItemModel {
  @override
  final int id;
  @override
  final String title;

  factory _$ItemModel([void Function(ItemModelBuilder) updates]) =>
      (new ItemModelBuilder()..update(updates)).build();

  _$ItemModel._({this.id, this.title}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ItemModel', 'id');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('ItemModel', 'title');
    }
  }

  @override
  ItemModel rebuild(void Function(ItemModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemModelBuilder toBuilder() => new ItemModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemModel && id == other.id && title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ItemModel')
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class ItemModelBuilder implements Builder<ItemModel, ItemModelBuilder> {
  _$ItemModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  ItemModelBuilder();

  ItemModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ItemModel;
  }

  @override
  void update(void Function(ItemModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ItemModel build() {
    final _$result = _$v ?? new _$ItemModel._(id: id, title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
