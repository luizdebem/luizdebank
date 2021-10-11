import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:luizdebank/models/Holder/AccountInfo.dart';
import 'package:luizdebank/models/Holder/CreditCardInfo.dart';
import 'package:luizdebank/models/Holder/Holder.dart';
import 'package:luizdebank/services/HideMoneyService.dart';
import 'package:luizdebank/services/HolderService.dart';
import 'package:luizdebank/util/CustomSwatch.dart';
import 'package:luizdebank/screens/HomeScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => HideMoneyService(),
        ),
        ChangeNotifierProvider(
          create: (_) => HolderService(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: createMaterialColor(
            Color.fromRGBO(119, 26, 201, 1),
          ),
          appBarTheme: AppBarTheme.of(context).copyWith(
            brightness: Brightness.dark,
          ),
        ),
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
        routes: {},
      ),
    );
  }
}
