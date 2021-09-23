import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestOne extends StatefulWidget {
  const TestOne({Key? key}) : super(key: key);

  @override
  _TestOneState createState() => _TestOneState();
}

class _TestOneState extends State<TestOne> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Model(),
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Provider'),
          ),
          body: Consumer<Model>(builder: (context, model, child) {
            return Column(
              children: [
                Center(
                  child: Text(model.name),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      model.changeName();
                    },
                    child: const Text('Change Name'))
              ],
            );
          })),
    );
  }
}

class Model extends ChangeNotifier {
  String name = 'hamza';
  changeName() {
    name = 'mousaab';
    notifyListeners();
  }
}
