import 'package:flutter/material.dart';
import 'package:luizdebank/components/AccountButton.dart';
import 'package:luizdebank/components/ActionsListView.dart';
import 'package:luizdebank/components/CreditCardButton.dart';
import 'package:luizdebank/components/EmprestimoButton.dart';
import 'package:luizdebank/components/HealthInsuranceButton.dart';
import 'package:luizdebank/components/LabeledIconButton.dart';
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
        leading: IconButton(
          icon: Icon(
            Icons.person_outlined,
            size: 28,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.visibility_outlined,
              size: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.help_outline,
              size: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.forward_to_inbox_outlined,
              size: 28,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(22, 28, 22, 20),
                width: double.infinity,
                color: Theme.of(context).colorScheme.primary,
                child: Text(
                  "Olá, Luiz Guilherme",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
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
    );
  }
}
