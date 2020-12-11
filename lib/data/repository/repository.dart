import 'package:task1_app/data/db_helper/entite/item.dart';
import 'package:task1_app/data/db_helper/idp_helper.dart';
import 'package:task1_app/data/http_helper/ihttpe_helper.dart';
import 'package:task1_app/model/item_model/item_list.dart';

import 'irepository.dart';

class Repository implements IRepository {
  IHttpHelper _ihttpHelper;
  IDbHelper _iDbHelper;

  Repository(this._ihttpHelper, this._iDbHelper);

  @override
  Future<ItemList> getMenus() async {
    return await _ihttpHelper.getMenus();
  }

  @override
  Future<List<Item>> getItem() {
    return _iDbHelper.getItem();
  }

  @override
  Future<void> insertItem(Item itemModel) async {
    try {
      final List<Item> result = await _iDbHelper.getItem();

      if (result == null || result.isEmpty) {
        _iDbHelper.insertItem(itemModel);
      } else {
        for (var item in result) {
          if (item.id == itemModel.id) {
            print('Exception Exception');
            throw Exception("");
          }
        }
        _iDbHelper.insertItem(itemModel);
      }
    } catch (e) {
      throw Exception("");
    }
  }
}
