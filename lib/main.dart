import 'package:flutter/material.dart';
import 'package:task1_app/ui/menu_page/page/menu_page.dart';

import 'injection.dart';

void main() async {
  await iniGetIt();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuPage(),
    );
  }
}
