// GENERATED CODE - DO NOT MODIFY BY HAND

part of type_list;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemList> _$itemListSerializer = new _$ItemListSerializer();

class _$ItemListSerializer implements StructuredSerializer<ItemList> {
  @override
  final Iterable<Type> types = const [ItemList, _$ItemList];
  @override
  final String wireName = 'ItemList';

  @override
  Iterable<Object> serialize(Serializers serializers, ItemList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.brakeType != null) {
      result
        ..add('BrakeType')
        ..add(serializers.serialize(object.brakeType,
            specifiedType:
                const FullType(BuiltList, const [const FullType(ItemModel)])));
    }
    if (object.discipline != null) {
      result
        ..add('Type')
        ..add(serializers.serialize(object.discipline,
            specifiedType:
                const FullType(BuiltList, const [const FullType(ItemModel)])));
    }
    if (object.frameMaterial != null) {
      result
        ..add('FrameMaterial')
        ..add(serializers.serialize(object.frameMaterial,
            specifiedType:
                const FullType(BuiltList, const [const FullType(ItemModel)])));
    }
    if (object.ridingStyle != null) {
      result
        ..add('RidingStyle')
        ..add(serializers.serialize(object.ridingStyle,
            specifiedType:
                const FullType(BuiltList, const [const FullType(ItemModel)])));
    }
    if (object.models != null) {
      result
        ..add('Models')
        ..add(serializers.serialize(object.models,
            specifiedType:
                const FullType(BuiltList, const [const FullType(ItemModel)])));
    }
    if (object.brands != null) {
      result
        ..add('Brands')
        ..add(serializers.serialize(object.brands,
            specifiedType:
                const FullType(BuiltList, const [const FullType(ItemModel)])));
    }
    if (object.flavors != null) {
      result
        ..add('Flavors')
        ..add(serializers.serialize(object.flavors,
            specifiedType:
                const FullType(BuiltList, const [const FullType(ItemModel)])));
    }
    if (object.nutritionBrands != null) {
      result
        ..add('NutritionBrands')
        ..add(serializers.serialize(object.nutritionBrands,
            specifiedType:
                const FullType(BuiltList, const [const FullType(ItemModel)])));
    }
    if (object.nutritionModel != null) {
      result
        ..add('NutritionModels')
        ..add(serializers.serialize(object.nutritionModel,
            specifiedType:
                const FullType(BuiltList, const [const FullType(ItemModel)])));
    }
    return result;
  }

  @override
  ItemList deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'BrakeType':
          result.brakeType.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ItemModel)]))
              as BuiltList<Object>);
          break;
        case 'Type':
          result.discipline.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ItemModel)]))
              as BuiltList<Object>);
          break;
        case 'FrameMaterial':
          result.frameMaterial.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ItemModel)]))
              as BuiltList<Object>);
          break;
        case 'RidingStyle':
          result.ridingStyle.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ItemModel)]))
              as BuiltList<Object>);
          break;
        case 'Models':
          result.models.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ItemModel)]))
              as BuiltList<Object>);
          break;
        case 'Brands':
          result.brands.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ItemModel)]))
              as BuiltList<Object>);
          break;
        case 'Flavors':
          result.flavors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ItemModel)]))
              as BuiltList<Object>);
          break;
        case 'NutritionBrands':
          result.nutritionBrands.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ItemModel)]))
              as BuiltList<Object>);
          break;
        case 'NutritionModels':
          result.nutritionModel.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ItemModel)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ItemList extends ItemList {
  @override
  final BuiltList<ItemModel> brakeType;
  @override
  final BuiltList<ItemModel> discipline;
  @override
  final BuiltList<ItemModel> frameMaterial;
  @override
  final BuiltList<ItemModel> ridingStyle;
  @override
  final BuiltList<ItemModel> models;
  @override
  final BuiltList<ItemModel> brands;
  @override
  final BuiltList<ItemModel> flavors;
  @override
  final BuiltList<ItemModel> nutritionBrands;
  @override
  final BuiltList<ItemModel> nutritionModel;

  factory _$ItemList([void Function(ItemListBuilder) updates]) =>
      (new ItemListBuilder()..update(updates)).build();

  _$ItemList._(
      {this.brakeType,
      this.discipline,
      this.frameMaterial,
      this.ridingStyle,
      this.models,
      this.brands,
      this.flavors,
      this.nutritionBrands,
      this.nutritionModel})
      : super._();

  @override
  ItemList rebuild(void Function(ItemListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemListBuilder toBuilder() => new ItemListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemList &&
        brakeType == other.brakeType &&
        discipline == other.discipline &&
        frameMaterial == other.frameMaterial &&
        ridingStyle == other.ridingStyle &&
        models == other.models &&
        brands == other.brands &&
        flavors == other.flavors &&
        nutritionBrands == other.nutritionBrands &&
        nutritionModel == other.nutritionModel;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, brakeType.hashCode),
                                    discipline.hashCode),
                                frameMaterial.hashCode),
                            ridingStyle.hashCode),
                        models.hashCode),
                    brands.hashCode),
                flavors.hashCode),
            nutritionBrands.hashCode),
        nutritionModel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ItemList')
          ..add('brakeType', brakeType)
          ..add('discipline', discipline)
          ..add('frameMaterial', frameMaterial)
          ..add('ridingStyle', ridingStyle)
          ..add('models', models)
          ..add('brands', brands)
          ..add('flavors', flavors)
          ..add('nutritionBrands', nutritionBrands)
          ..add('nutritionModel', nutritionModel))
        .toString();
  }
}

class ItemListBuilder implements Builder<ItemList, ItemListBuilder> {
  _$ItemList _$v;

  ListBuilder<ItemModel> _brakeType;
  ListBuilder<ItemModel> get brakeType =>
      _$this._brakeType ??= new ListBuilder<ItemModel>();
  set brakeType(ListBuilder<ItemModel> brakeType) =>
      _$this._brakeType = brakeType;

  ListBuilder<ItemModel> _discipline;
  ListBuilder<ItemModel> get discipline =>
      _$this._discipline ??= new ListBuilder<ItemModel>();
  set discipline(ListBuilder<ItemModel> discipline) =>
      _$this._discipline = discipline;

  ListBuilder<ItemModel> _frameMaterial;
  ListBuilder<ItemModel> get frameMaterial =>
      _$this._frameMaterial ??= new ListBuilder<ItemModel>();
  set frameMaterial(ListBuilder<ItemModel> frameMaterial) =>
      _$this._frameMaterial = frameMaterial;

  ListBuilder<ItemModel> _ridingStyle;
  ListBuilder<ItemModel> get ridingStyle =>
      _$this._ridingStyle ??= new ListBuilder<ItemModel>();
  set ridingStyle(ListBuilder<ItemModel> ridingStyle) =>
      _$this._ridingStyle = ridingStyle;

  ListBuilder<ItemModel> _models;
  ListBuilder<ItemModel> get models =>
      _$this._models ??= new ListBuilder<ItemModel>();
  set models(ListBuilder<ItemModel> models) => _$this._models = models;

  ListBuilder<ItemModel> _brands;
  ListBuilder<ItemModel> get brands =>
      _$this._brands ??= new ListBuilder<ItemModel>();
  set brands(ListBuilder<ItemModel> brands) => _$this._brands = brands;

  ListBuilder<ItemModel> _flavors;
  ListBuilder<ItemModel> get flavors =>
      _$this._flavors ??= new ListBuilder<ItemModel>();
  set flavors(ListBuilder<ItemModel> flavors) => _$this._flavors = flavors;

  ListBuilder<ItemModel> _nutritionBrands;
  ListBuilder<ItemModel> get nutritionBrands =>
      _$this._nutritionBrands ??= new ListBuilder<ItemModel>();
  set nutritionBrands(ListBuilder<ItemModel> nutritionBrands) =>
      _$this._nutritionBrands = nutritionBrands;

  ListBuilder<ItemModel> _nutritionModel;
  ListBuilder<ItemModel> get nutritionModel =>
      _$this._nutritionModel ??= new ListBuilder<ItemModel>();
  set nutritionModel(ListBuilder<ItemModel> nutritionModel) =>
      _$this._nutritionModel = nutritionModel;

  ItemListBuilder();

  ItemListBuilder get _$this {
    if (_$v != null) {
      _brakeType = _$v.brakeType?.toBuilder();
      _discipline = _$v.discipline?.toBuilder();
      _frameMaterial = _$v.frameMaterial?.toBuilder();
      _ridingStyle = _$v.ridingStyle?.toBuilder();
      _models = _$v.models?.toBuilder();
      _brands = _$v.brands?.toBuilder();
      _flavors = _$v.flavors?.toBuilder();
      _nutritionBrands = _$v.nutritionBrands?.toBuilder();
      _nutritionModel = _$v.nutritionModel?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ItemList;
  }

  @override
  void update(void Function(ItemListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ItemList build() {
    _$ItemList _$result;
    try {
      _$result = _$v ??
          new _$ItemList._(
              brakeType: _brakeType?.build(),
              discipline: _discipline?.build(),
              frameMaterial: _frameMaterial?.build(),
              ridingStyle: _ridingStyle?.build(),
              models: _models?.build(),
              brands: _brands?.build(),
              flavors: _flavors?.build(),
              nutritionBrands: _nutritionBrands?.build(),
              nutritionModel: _nutritionModel?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'brakeType';
        _brakeType?.build();
        _$failedField = 'discipline';
        _discipline?.build();
        _$failedField = 'frameMaterial';
        _frameMaterial?.build();
        _$failedField = 'ridingStyle';
        _ridingStyle?.build();
        _$failedField = 'models';
        _models?.build();
        _$failedField = 'brands';
        _brands?.build();
        _$failedField = 'flavors';
        _flavors?.build();
        _$failedField = 'nutritionBrands';
        _nutritionBrands?.build();
        _$failedField = 'nutritionModel';
        _nutritionModel?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ItemList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
