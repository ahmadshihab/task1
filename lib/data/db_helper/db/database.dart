import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:task1_app/data/db_helper/dao/item_dao.dart';
import 'package:task1_app/data/db_helper/entite/item.dart';

part 'database.g.dart';

@Database(version: 1, entities: [Item])
abstract class AppDatabase extends FloorDatabase {
  ItemDao get itemDao;
}
