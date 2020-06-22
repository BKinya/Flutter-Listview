import 'package:flutter/material.dart';
import 'package:flutterlistview/my_state.dart';

import 'engineer.dart';

void main() {
  runApp(MyApp());
}

var engineers = getEngineers();
var aBool = getVisibility();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter ListView"),
          ),
          body: MyState()),
    );
  }
}
