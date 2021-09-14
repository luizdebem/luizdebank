import 'package:flutter/material.dart';
import 'package:lubank/components/LabeledIconButton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final actions = [
    "Pix",
    "Pagar",
    "Transferir",
    "Depositar",
    "Pegar emprestado",
    "Recarga de celular",
    "Cobrar",
    "Doação",
    "Transferir intarnac.",
    "Encontrar atalhos",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 80,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Theme.of(context).colorScheme.primary,
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Text(
                  "Olá, Isabela",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Conta",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                  SizedBox(height: 18),
                  Text(
                    "R\$ 1.000.000,00",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      letterSpacing: -2.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 22.0),
                itemCount: actions.length,
                itemBuilder: (BuildContext context, int index) {
                  return LabeledIconButton(
                    icon: Icons.search,
                    label: actions[index],
                  );
                },
                separatorBuilder: (BuildContext context, int itemIndex) {
                  return SizedBox(width: 12);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
