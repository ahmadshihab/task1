import 'dart:io';
import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/async_serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task1_app/data/db_helper/db_helper.dart';
import 'package:task1_app/data/db_helper/entite/item.dart';
import 'package:task1_app/data/db_helper/idp_helper.dart';
import 'package:task1_app/data/repository/irepository.dart';
import 'package:task1_app/data/repository/repository.dart';
import 'package:task1_app/model/item_model/item_model.dart';
import 'package:task1_app/ui/menu_page/bloc/products_bloc.dart';
import 'package:task1_app/ui/menu_page/bloc/products_event.dart';
import 'package:task1_app/ui/menu_page/bloc/products_state.dart';


import '../../../injection.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  String type;
  int id = 0;
  IRepository _repository;
  Item temp;
  String key = "models";
  List<Item> items = List<Item>();

  final _bloc = sl<ProductsBloc>();

  @override
  void initState() {
    _bloc.add(GetMenu((b) => b..key = key));
    getItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _bloc,
      builder: (BuildContext context, ProductsState state) {
        if (!state.isLoading) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      DropdownButton<Item>(
                        hint: Text(key),
                        items: state.items.map((Item value) {
                          if (isInDb(items, value.id)) {
                            print("Item is exist");
                          } else {
                            //print("Item not exist");
                            _bloc.add(AddItem((b) => b
                              ..key = key
                              ..item = Item(
                                  id: value.id, name: value.name, key: key)));
                          }
                          //print(value.name);

                          return new DropdownMenuItem<Item>(
                            value: value,
                            child: new Text(value.name),
                          );
                        }).toList(),
                        onChanged: (Item value) {
                          setState(() {
                            id = value.id;
                            type = value.name;
                            key = value.key;
                          });
                        },
                      ),
                    ],
                  )
                  // Center(
                  //   child: MenuTile("break type", state.menus),
                  // )
                  //if (_expanded)
                  // Divider()
                ],
              ),
            ),
          );
        }

        return Center(child: CircularProgressIndicator());
      },
    );
  }

  void error(String errorCode) {
    if (errorCode.isNotEmpty) {
      Fluttertoast.showToast(
          msg: errorCode,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIos: 1,
          backgroundColor: Colors.blueAccent,
          textColor: Colors.white,
          fontSize: 16.0);
      _bloc.add(ClearError());
    }
  }

  bool isInDb(List<Item> items, int itemId) {
    for (int i = 0; i < items.length; i++) {
      if (itemId == items[i].id) {
        return true;
      }
    }
    return false;
  }

  void getItems() async {
    items = await _repository.getItem();
  }
}
