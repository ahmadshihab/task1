import 'dart:io';

import 'package:task1_app/data/db_helper/entite/item.dart';
import 'package:task1_app/data/db_helper/idp_helper.dart';
import 'package:task1_app/data/http_helper/ihttpe_helper.dart';
import 'package:task1_app/model/item_model/item_list.dart';
import 'package:connectivity/connectivity.dart';
import 'package:task1_app/model/item_model/item_model.dart';

import 'irepository.dart';

class Repository implements IRepository {
  IHttpHelper _ihttpHelper;
  IDbHelper _iDbHelper;

  Repository(this._ihttpHelper, this._iDbHelper);

  @override
  Future<List<Item>> getMenus(String key) async {
    List<Item> list = List<Item>();

    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.none) {
      print("no connection");
      return await _iDbHelper.getItemByKey(key);
    } else if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      print("connected");
      ItemList menu = await _ihttpHelper.getMenus();

      List<ItemModel> models = menu.models.toList();

      for (int i = 0; i < models.length; i++) {
        list.add(Item(id: models[i].id, name: models[i].title, key: key));
      }

      return list;
    }
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
            print("Item is exist");
            throw Exception("");
          }
        }
        _iDbHelper.insertItem(itemModel);
      }
    } catch (e) {
      throw Exception("");
    }
  }

  // @override
  // Future<ItemList> getMenu() async {
  //   return await _ihttpHelper.getMenus();
  // }
}
