import 'package:flutter/material.dart';

class HideMoneyService extends ChangeNotifier {
  bool _isHidden = false;

  bool get isHidden => _isHidden;

  void toggle() {
    _isHidden = !_isHidden;
    notifyListeners();
  }
}
