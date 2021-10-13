import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:luizdebank/components/HideMoney.dart';
import 'package:luizdebank/services/HideMoneyService.dart';
import 'package:luizdebank/services/HolderService.dart';
import 'package:luizdebank/util/Util.dart';
import 'package:provider/provider.dart';

class AccountButton extends StatelessWidget {
  AccountButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<HideMoneyService, HolderService>(
      builder: (context, hiddenService, holderService, child) => MaterialButton(
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
              hiddenService.isHidden
                  ? Text(
                      Util.currencyFormatter.format(
                        holderService.holder.accountInfo.total,
                      ),
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
