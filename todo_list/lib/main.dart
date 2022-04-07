import 'package:flutter/material.dart';
import 'package:todo_list/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List - Add e Remove',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: HomePage(),
    );
  }
}
