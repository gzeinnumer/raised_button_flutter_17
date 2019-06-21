import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  State createState() => new _State();
}

class _State extends State<MyApp>{
  String _value = 'Hello Zein';

  void _onPressed(){
    setState(() {
      _value = 'My name is Zein';
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text('Nama disini'),),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_value),
              new RaisedButton(
                onPressed: _onPressed,
                child: new Text('Click me!'),
              )
            ],
          ),
        ),
      ),
    );
  }
}