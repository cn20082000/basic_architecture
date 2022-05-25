import 'package:basic_architecture/mvvm/data/data_manager_impl.dart';

abstract class DataManager {
  int updateValue(int newValue);
  int getValue();

  static DataManager? _dataManager;
  static DataManager getInstance() {
    _dataManager ??= DataManagerImpl();
    return _dataManager!;
  }
}