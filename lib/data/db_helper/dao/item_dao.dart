import 'package:floor/floor.dart';
import 'package:task1_app/data/db_helper/entite/item.dart';

@dao
abstract class ItemDao {
  @insert
  Future<void> insertItem(Item item);

  @Query('SELECT * FROM Item')
  Future<List<Item>> getItem();
}
