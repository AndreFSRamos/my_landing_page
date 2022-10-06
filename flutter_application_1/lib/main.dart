import 'package:flutter/material.dart';
import 'pages/menu_select/page_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const PageMenu(),
      debugShowCheckedModeBanner: false,
    );
  }
}
