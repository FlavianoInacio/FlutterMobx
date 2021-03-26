

import 'package:flutter/material.dart';
import 'package:flutter_app/controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Index extends StatelessWidget {
  final controller = Controller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste Mobx"),
      ),
      body: _body(context),
      floatingActionButton: buildFloatingActionButton(),
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        controller.increment();
      },
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }

  _body(context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Observer(builder: (_){
              return Text(
                '${controller.counter.value}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
          ],
        ),
      ),
    );
  }
}
