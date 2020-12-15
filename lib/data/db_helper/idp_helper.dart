import 'package:task1_app/data/db_helper/db/database.dart';
import 'package:task1_app/data/db_helper/entite/item.dart';

abstract class IDbHelper {
  Future<AppDatabase> getInstDB() {}

  Future<void> insertItem(Item item);

  Future<List<Item>> getItem();

  Future<List<Item>> getItemByKey(String key);
}
