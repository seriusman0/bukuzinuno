import 'package:flutter/material.dart';

class view extends StatefulWidget {
  String value;
  view({this.value});
  @override
  _viewState createState() => _viewState(value);
}

class _viewState extends State<view> {
  String value;
  _viewState(this.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View"),
      ),
      body: Center(
        child: Text(value),
      ),
    );
  }
}
