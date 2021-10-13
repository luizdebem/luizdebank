import 'package:flutter/material.dart';
import 'package:luizdebank/components/LabeledIconButton.dart';

class ActionsListView extends StatelessWidget {
  ActionsListView({Key key}) : super(key: key);

  final List<String> actions = [
    "Área Pix",
    "Pagar",
    "Transferir",
    "Depositar",
    "Pegar emprestado",
    "Recarga de celular",
    "Cobrar",
    "Doação",
    "Transferir internac.",
    "Encontrar atalhos",
  ];

  final List<IconData> icons = [
    Icons.monetization_on_outlined,
    Icons.receipt_outlined,
    Icons.payments_outlined,
    Icons.payments_outlined,
    Icons.card_giftcard_outlined,
    Icons.smartphone_outlined,
    Icons.payments_outlined,
    Icons.favorite_border_outlined,
    Icons.language_outlined,
    Icons.help_outline,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 22.0),
        itemCount: actions.length,
        itemBuilder: (BuildContext context, int index) {
          return LabeledIconButton(
            icon: icons[index],
            label: actions[index],
          );
        },
        separatorBuilder: (BuildContext context, int itemIndex) {
          return SizedBox(width: 12);
        },
      ),
    );
  }
}
