import 'package:floor/floor.dart';

@entity
class Item {
  @primaryKey
  int id;

  String name;

  Item({this.id, this.name});
}
