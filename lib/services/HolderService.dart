import 'package:flutter/material.dart';
import 'package:luizdebank/models/Holder/AccountInfo.dart';
import 'package:luizdebank/models/Holder/CreditCardInfo.dart';
import 'package:luizdebank/models/Holder/Holder.dart';

class HolderService extends ChangeNotifier {
  Holder _holder = Holder(
    accountInfo: AccountInfo(
      total: 1792.55,
    ),
    creditCardInfo: CreditCardInfo(
      availableLimit: 405.20,
      currentInvoice: 1094.80,
    ),
    fullName: "Luiz Guilherme",
  );

  Holder get holder => _holder;

  void setHolder(Holder h) {
    _holder = h;
    notifyListeners();
  }
}
