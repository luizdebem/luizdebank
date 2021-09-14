import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 0.0,
      ),
      body: SafeArea(
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
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    HomeHeader(),
                    Padding(
                      padding: EdgeInsets.all(22),
                      child: AccountButton(),
                    ),
                    ActionsListView(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: MyCardsButton(),
                    ),
                    Divider(height: 40),
                    Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: CreditCardButton(),
                    ),
                    Divider(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: EmprestimoButton(),
                    ),
                    Divider(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: HealthInsuranceButton(),
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
