class AccountInfo {
  double _total;

  AccountInfo({double total}) {
    this._total = total;
  }

  double get total => _total;
  set total(double total) => _total = total;

  AccountInfo.fromJson(Map<String, dynamic> json) {
    _total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this._total;
    return data;
  }
}
