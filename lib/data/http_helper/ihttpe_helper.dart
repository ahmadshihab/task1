import 'package:task1_app/model/item_model/item_list.dart';

abstract class IHttpHelper {
  Future<ItemList> getMenus();
}
