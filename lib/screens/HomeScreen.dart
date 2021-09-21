import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:luizdebank/components/AccountButton.dart';
import 'package:luizdebank/components/ActionsListView.dart';
import 'package:luizdebank/components/CreditCardButton.dart';
import 'package:luizdebank/components/EmprestimoButton.dart';
import 'package:luizdebank/components/HealthInsuranceButton.dart';
import 'package:luizdebank/components/HomeHeader.dart';
import 'package:luizdebank/components/MyCardsButton.dart';

class HomeScreen extends StatefulWidget {
  // routeName implícito "/" em main.dart
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _moneyController = TextEditingController();
  double _money = 1000;

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text("Olá!"),
          content: Container(
            height: 80,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Quanto de grana tu queres?"),
                  TextField(
                    controller: _moneyController,
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                      signed: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              child: Text("OK"),
              onPressed: () {
                final value = _moneyController.text.replaceAll(',', '.');
                try {
                  final parsedValue = double.parse(value);
                  if (parsedValue >= 0) {
                    setState(() {
                      _money = parsedValue;
                    });
                    Navigator.of(context).pop();
                  }
                } catch (error) {
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        ),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 0.0,
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: RefreshIndicator(
            onRefresh: () async {
              return await Future.delayed(Duration(seconds: 3));
            },
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 0],
                  colors: [
                    Theme.of(context).primaryColor,
                    Colors.white,
                  ],
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    HomeHeader(),
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          AccountButton(money: _money),
                          ActionsListView(),
                          MyCardsButton(),
                          SizedBox(height: 20),
                          CreditCardButton(),
                          EmprestimoButton(),
                          HealthInsuranceButton(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
