import 'package:flutter/material.dart';

import '../data/data_manager.dart';

class HomeViewModel extends ChangeNotifier {

  var value = 0;
  final DataManager _dataManager = DataManager.getInstance();

  HomeViewModel() {
    getValue();
  }

  void getValue() {
    final result = _dataManager.getValue();
    value = result;
    notifyListeners();
  }

  void add() {
    final result = _dataManager.updateValue(value + 1);
    value = result;
    notifyListeners();
  }
}