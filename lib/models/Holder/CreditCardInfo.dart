class CreditCardInfo {
  double _currentInvoice;
  double _availableLimit;

  CreditCardInfo({double currentInvoice, double availableLimit}) {
    this._currentInvoice = currentInvoice;
    this._availableLimit = availableLimit;
  }

  double get currentInvoice => _currentInvoice;
  set currentInvoice(double currentInvoice) => _currentInvoice = currentInvoice;
  double get availableLimit => _availableLimit;
  set availableLimit(double availableLimit) => _availableLimit = availableLimit;

  CreditCardInfo.fromJson(Map<String, dynamic> json) {
    _currentInvoice = json['currentInvoice'];
    _availableLimit = json['availableLimit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['currentInvoice'] = this._currentInvoice;
    data['availableLimit'] = this._availableLimit;
    return data;
  }
}
