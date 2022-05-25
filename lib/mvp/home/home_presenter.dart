import 'package:basic_architecture/mvp/data/data_manager.dart';
import 'package:basic_architecture/mvp/home/home_contract.dart';

class HomePresenterImpl implements HomePresenter {

  final HomeView view;
  final DataManager dataManager = DataManager.getInstance();

  HomePresenterImpl({required this.view});

  @override
  void add() {
    final value = dataManager.getValue();
    final result = dataManager.updateValue(value + 1);
    view.addSuccess(result);
  }

  @override
  void getValue() {
    final value = dataManager.getValue();
    view.getValueSuccess(value);
  }

}