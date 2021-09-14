import 'package:flutter/material.dart';
import 'package:lubank/util/CustomSwatch.dart';
import 'package:lubank/util/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: createMaterialColor(
          Color.fromRGBO(119, 26, 201, 1),
        ),
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}