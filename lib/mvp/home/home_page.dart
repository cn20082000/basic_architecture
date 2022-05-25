import 'package:basic_architecture/mvp/home/home_contract.dart';
import 'package:basic_architecture/mvp/home/home_presenter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> implements HomeView {

  // https://dart.dev/null-safety/understanding-null-safety#late-variables
  late final HomePresenter presenter = HomePresenterImpl(view: this);
  var _value = 0;


  @override
  void initState() {
    super.initState();
    presenter.getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic mvp"),
      ),
      body: Center(
        child: Text("Counter: $_value"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: presenter.add,
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void addSuccess(int value) {
    setState(() {
      _value = value;
    });
  }

  @override
  void getValueSuccess(int value) {
    setState(() {
      _value = value;
    });
  }
}
