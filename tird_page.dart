import 'package:flutter/material.dart';

class TirdPage extends StatefulWidget {
  final String texto;

  TirdPage({Key key, this.texto}) : super(key: key);

  @override
  _TirdPageState createState() => _TirdPageState();
}

class _TirdPageState extends State<TirdPage> {
  TextEditingController _textController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pantalla 2"),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MaterialButton(
                    child: Text(":v"),
                    onPressed: () {
                      Navigator.of(context)
                          .pop(":v" + " " + _textController2.text);
                    },
                  ),
                  MaterialButton(
                    child: Text(">:v"),
                    onPressed: () {
                      Navigator.of(context)
                          .pop(">:v" + " " + _textController2.text);
                    },
                  ),
                  MaterialButton(
                    child: Text(":'v"),
                    onPressed: () {
                      Navigator.of(context)
                          .pop(":'v" + " " + _textController2.text);
                    },
                  )
                ]),
          ],
        )));
  }
}
