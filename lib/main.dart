import 'package:flutter/material.dart';
import 'screens/login.dart';

void main(List<String> args) {
  runApp(app());
}

class app extends StatefulWidget {
  const app({Key? key}) : super(key: key);

  @override
  _appState createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }
}
