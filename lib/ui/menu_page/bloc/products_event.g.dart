// GENERATED CODE - DO NOT MODIFY BY HAND

part of products_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetProducts extends GetProducts {
  factory _$GetProducts([void Function(GetProductsBuilder) updates]) =>
      (new GetProductsBuilder()..update(updates)).build();

  _$GetProducts._() : super._();

  @override
  GetProducts rebuild(void Function(GetProductsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetProductsBuilder toBuilder() => new GetProductsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetProducts;
  }

  @override
  int get hashCode {
    return 583255550;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetProducts').toString();
  }
}

class GetProductsBuilder implements Builder<GetProducts, GetProductsBuilder> {
  _$GetProducts _$v;

  GetProductsBuilder();

  @override
  void replace(GetProducts other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetProducts;
  }

  @override
  void update(void Function(GetProductsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetProducts build() {
    final _$result = _$v ?? new _$GetProducts._();
    replace(_$result);
    return _$result;
  }
}

class _$ClearError extends ClearError {
  factory _$ClearError([void Function(ClearErrorBuilder) updates]) =>
      (new ClearErrorBuilder()..update(updates)).build();

  _$ClearError._() : super._();

  @override
  ClearError rebuild(void Function(ClearErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearErrorBuilder toBuilder() => new ClearErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearError;
  }

  @override
  int get hashCode {
    return 507656265;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ClearError').toString();
  }
}

class ClearErrorBuilder implements Builder<ClearError, ClearErrorBuilder> {
  _$ClearError _$v;

  ClearErrorBuilder();

  @override
  void replace(ClearError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClearError;
  }

  @override
  void update(void Function(ClearErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClearError build() {
    final _$result = _$v ?? new _$ClearError._();
    replace(_$result);
    return _$result;
  }
}

class _$GetMenu extends GetMenu {
  factory _$GetMenu([void Function(GetMenuBuilder) updates]) =>
      (new GetMenuBuilder()..update(updates)).build();

  _$GetMenu._() : super._();

  @override
  GetMenu rebuild(void Function(GetMenuBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMenuBuilder toBuilder() => new GetMenuBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMenu;
  }

  @override
  int get hashCode {
    return 821705771;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetMenu').toString();
  }
}

class GetMenuBuilder implements Builder<GetMenu, GetMenuBuilder> {
  _$GetMenu _$v;

  GetMenuBuilder();

  @override
  void replace(GetMenu other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetMenu;
  }

  @override
  void update(void Function(GetMenuBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetMenu build() {
    final _$result = _$v ?? new _$GetMenu._();
    replace(_$result);
    return _$result;
  }
}

class _$AddItem extends AddItem {
  @override
  final Item item;

  factory _$AddItem([void Function(AddItemBuilder) updates]) =>
      (new AddItemBuilder()..update(updates)).build();

  _$AddItem._({this.item}) : super._() {
    if (item == null) {
      throw new BuiltValueNullFieldError('AddItem', 'item');
    }
  }

  @override
  AddItem rebuild(void Function(AddItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddItemBuilder toBuilder() => new AddItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddItem && item == other.item;
  }

  @override
  int get hashCode {
    return $jf($jc(0, item.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddItem')..add('item', item))
        .toString();
  }
}

class AddItemBuilder implements Builder<AddItem, AddItemBuilder> {
  _$AddItem _$v;

  Item _item;
  Item get item => _$this._item;
  set item(Item item) => _$this._item = item;

  AddItemBuilder();

  AddItemBuilder get _$this {
    if (_$v != null) {
      _item = _$v.item;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddItem;
  }

  @override
  void update(void Function(AddItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddItem build() {
    final _$result = _$v ?? new _$AddItem._(item: item);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
