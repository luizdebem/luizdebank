import 'package:flutter/material.dart';
import 'package:luizdebank/components/HideMoney.dart';
import 'package:luizdebank/services/HideMoneyService.dart';
import 'package:provider/provider.dart';

class AccountButton extends StatelessWidget {
  const AccountButton({Key key}) : super(key: key);

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
              hidden.isHidden
                  ? Text(
                      "R\$ 1.721.369,32",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        letterSpacing: -2.0,
                      ),
                    )
                  : HideMoney(),
            ],
          ),
        ),
      ),
    );
  }
}
