import 'package:basic_architecture/mvp/data/data_manager.dart';

class DataManagerImpl implements DataManager {
  int value = 0;

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