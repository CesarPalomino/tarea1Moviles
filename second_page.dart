import 'dart:math';

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String texto;

  SecondPage({Key key, this.texto}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController _textController = TextEditingController();
  int i = 0;
  void _rnd() {
    setState(() {
      i = Random().nextInt(1000);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla 2"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red, Colors.blue])),
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Text(
                    "Genere numero aleatorio",
                    style: TextStyle(fontSize: 30, color: Colors.purple),
                  )),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  "$i",
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              ),
              MaterialButton(
                child: Text("Generar"),
                onPressed: () {
                  _rnd();
                },
              ),
              MaterialButton(
                child: Text("Guardar"),
                onPressed: () {
                  Navigator.of(context).pop(
                      widget.texto + " " + i.toString() + _textController.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
