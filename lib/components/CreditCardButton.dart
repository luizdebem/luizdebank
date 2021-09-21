import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:luizdebank/components/HideMoney.dart';
import 'package:luizdebank/services/HideMoneyService.dart';
import 'package:provider/provider.dart';

class CreditCardButton extends StatelessWidget {
  CreditCardButton({Key key}) : super(key: key);

  final formatter = NumberFormat.simpleCurrency(locale: 'pt_BR');

  @override
  Widget build(BuildContext context) {
    return Consumer<HideMoneyService>(
      builder: (context, hidden, child) => MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        shape: Border(top: BorderSide(color: Colors.grey[100], width: 2)),
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.credit_card_outlined),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cartão de crédito",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
              SizedBox(height: 15),
              Text(
                "Fatura atual",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              hidden.isHidden
                  ? Text(
                      formatter.format(1094.80),
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        letterSpacing: -2.0,
                      ),
                    )
                  : HideMoney(),
              SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Limite disponível de ",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: formatter.format(405.20),
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                        letterSpacing: -1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
