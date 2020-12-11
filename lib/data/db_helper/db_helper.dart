import 'package:task1_app/data/db_helper/db/database.dart';
import 'package:task1_app/data/db_helper/entite/item.dart';
import 'package:task1_app/data/db_helper/idp_helper.dart';

class DbHelper implements IDbHelper {
  @override
  Future<AppDatabase> getInstDB() async {
    return await $FloorAppDatabase.databaseBuilder('testDB.db').build();
  }

  @override
  Future<List<Item>> getItem() async {
    try {
      return await (await getInstDB()).itemDao.getItem();
    } catch (e) {
      print('wishList db e is $e');
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> insertItem(Item item) async {
    try {
      return await (await getInstDB()).itemDao.insertItem(item);
    } catch (e) {
      print('wishList db e is $e');
      throw Exception(e.toString());
    }
  }
}
