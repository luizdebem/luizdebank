import 'package:flutter/material.dart';
import 'package:luizdebank/components/LabeledIconButton.dart';

class ActionsListView extends StatelessWidget {
  const ActionsListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> actions = [
      "Pix",
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

    return Container(
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
    );
  }
}
