import 'package:task1_app/data/db_helper/entite/item.dart';
import 'package:task1_app/data/http_helper/ihttpe_helper.dart';
import 'package:task1_app/model/item_model/item_list.dart';

abstract class IRepository {
  Future<ItemList> getMenus();

  Future<void> insertItem(Item item);

  Future<List<Item>> getItem();
}
