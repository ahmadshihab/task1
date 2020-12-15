import 'package:task1_app/data/db_helper/entite/item.dart';
import 'package:task1_app/data/http_helper/ihttpe_helper.dart';
import 'package:task1_app/model/item_model/item_list.dart';

abstract class IRepository {
  Future<List<Item>> getMenus(String key);

  // Future<ItemList> getMenu();

  Future<void> insertItem(Item item);

  Future<List<Item>> getItem();
}
