import 'package:flutter/material.dart';
import 'package:task1_app/model/item_model/item_list.dart';
import 'package:task1_app/model/item_model/item_model.dart';

class MenuTile extends StatefulWidget {
  String title;
  ItemList menus;
  MenuTile(this.title, this.menus);
  @override
  _MenuTileState createState() => _MenuTileState();
}

class _MenuTileState extends State<MenuTile> {
  int id = 0;
  String type;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DropdownButton<ItemModel>(
          hint: Text(widget.title),
          items: widget.menus.brakeType.map((ItemModel value) {
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
    );
  }
}
