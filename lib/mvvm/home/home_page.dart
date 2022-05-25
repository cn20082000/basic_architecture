import 'package:basic_architecture/mvvm/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (ctx) => HomeViewModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Basic mvvm"),
        ),
        body: Center(
          child: Consumer<HomeViewModel>(
            builder: (ctx, vm, child) => Text("Counter: ${vm.value}"),
          ),
        ),
        floatingActionButton: Consumer<HomeViewModel>(
          builder: (ctx, vm, child) => FloatingActionButton(
            onPressed: vm.add,
            child: const Icon(Icons.add),
          ),
        ),
      )
    );
  }
}
