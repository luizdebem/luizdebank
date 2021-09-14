import 'package:flutter/material.dart';
import 'package:luizdebank/util/CustomSwatch.dart';
import 'package:luizdebank/screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
