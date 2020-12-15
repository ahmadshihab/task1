import 'package:floor/floor.dart';

@entity
class Item {
  @primaryKey
  int id;

  String name;

  String key;

  Item({this.id, this.name, this.key});
}
