import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task1_app/data/db_helper/entite/item.dart';
import 'package:task1_app/data/repository/irepository.dart';
import 'package:task1_app/model/item_model/item_model.dart';
import 'package:task1_app/ui/menu_page/bloc/products_bloc.dart';
import 'package:task1_app/ui/menu_page/bloc/products_event.dart';
import 'package:task1_app/ui/menu_page/bloc/products_state.dart';
import 'package:task1_app/ui/menu_page/page/menu_tile.dart';

import '../../../injection.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  String type;
  int id = 0;
  IRepository _iRepository;
  Item temp;

  final _bloc = sl<ProductsBloc>();

  @override
  void initState() {
    _bloc.add(GetMenu());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _bloc,
      builder: (BuildContext context, ProductsState state) {
        // error(state.error);
        if (state.isLoading) {
          print(state.items.length);
          // return Center(child: CircularProgressIndicator());
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      DropdownButton<Item>(
                        hint: Text("break Type"),
                        items: state.items.map((Item value) {
                          return new DropdownMenuItem<Item>(
                            value: value,
                            child: new Text(value.name),
                          );
                        }).toList(),
                        onChanged: (Item value) {
                          setState(() {
                            id = value.id;
                            type = value.name;
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

        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    DropdownButton<ItemModel>(
                      hint: Text("break Type"),
                      items: state.menus.brakeType.map((ItemModel value) {
                        // temp = Item(id: value.id, name: value.title);
                        // print(temp.name);

                        _bloc.add(AddItem((b) =>
                            b..item = Item(id: value.id, name: value.title)));
                        return new DropdownMenuItem<ItemModel>(
                          value: value,
                          child: new Text(value.title),
                        );
                      }).toList(),
                      onChanged: (ItemModel value) {
                        setState(() {
                          id = value.id;
                          type = value.title;
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
}
