import 'package:basic_architecture/mvvm/data/data_manager.dart';

class DataManagerImpl implements DataManager {
  int value = 6;

  @override
  int getValue() {
    return value;
  }

  @override
  int updateValue(int newValue) {
    value = newValue;
    return value;
  }
}