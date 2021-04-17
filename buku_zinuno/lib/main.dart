// import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    new MaterialApp(
      title: ("Buku Zinuno BNKP"),
      home: new Home(),
      routes: <String, WidgetBuilder>{
        '/HalSatu': (BuildContext context) => new Home(),
        '/HalDua': (BuildContext context) => new ViewLagu()
      },
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controllerNomor = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Buku Zinuno",
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              new Padding(padding: new EdgeInsets.only(top: 20.0)),
              new Text(
                "BUKU ZINUNO BNKP LAHEMO",
                style: new TextStyle(fontSize: 20.0),
              ),
              new Padding(padding: new EdgeInsets.only(top: 20.0)),
              new TextField(
                controller: controllerNomor,
                decoration: new InputDecoration(labelText: "Nomor Zinuno"),
                // keyboardType: TextInputType.number,
                // inputFormatters: <TextInputFormatter>[
                //   WhitelistingTextInputFormatter.digitsOnly
                // ],
              ),
              new Padding(padding: new EdgeInsets.only(top: 20.0)),
              new RaisedButton(
                child: new Text("Oke"),
                color: Colors.blue,
                onPressed: () {
                  NomorLagu(nomor: controllerNomor.text);
                  Navigator.pushNamed(
                    context,
                    '/HalDua',
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NomorLagu {
  String nomor;
  NomorLagu({this.nomor});

  void out() {
    new Text("$nomor");
  }
}

class ViewLagu extends StatelessWidget {
  const ViewLagu({this.nomor});
  final NomorLagu nomor;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Lirik Lagu"),
      ),
      body: new Center(
        child: new Text("data: ${"+ nomor.out()+"}"),
      ),
    );
  }
}

void nomor(String value) {
  value = value;
}
