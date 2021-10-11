import 'package:luizdebank/models/Holder/AccountInfo.dart';
import 'package:luizdebank/models/Holder/CreditCardInfo.dart';

class Holder {
  String _fullName;
  CreditCardInfo _creditCardInfo;
  AccountInfo _accountInfo;

  Holder({
    String fullName,
    CreditCardInfo creditCardInfo,
    AccountInfo accountInfo,
  }) {
    this._fullName = fullName;
    this._creditCardInfo = creditCardInfo;
    this._accountInfo = accountInfo;
  }

  String get fullName => _fullName;
  set fullName(String fullName) => _fullName = fullName;
  CreditCardInfo get creditCardInfo => _creditCardInfo;
  set creditCardInfo(CreditCardInfo creditCardInfo) =>
      _creditCardInfo = creditCardInfo;
  AccountInfo get accountInfo => _accountInfo;
  set accountInfo(AccountInfo accountInfo) => _accountInfo = accountInfo;

  Holder.fromJson(Map<String, dynamic> json) {
    _fullName = json['fullName'];
    _creditCardInfo = json['creditCardInfo'] != null
        ? new CreditCardInfo.fromJson(json['creditCardInfo'])
        : null;
    _accountInfo = json['accountInfo'] != null
        ? new AccountInfo.fromJson(json['accountInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullName'] = this._fullName;
    if (this._creditCardInfo != null) {
      data['creditCardInfo'] = this._creditCardInfo.toJson();
    }
    if (this._accountInfo != null) {
      data['accountInfo'] = this._accountInfo.toJson();
    }
    return data;
  }
}
