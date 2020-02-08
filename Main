import 'package:flutter/material.dart';
import 'package:practica/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ruteo',
      initialRoute: "/",
      //home: PageOne(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class PageOne extends StatefulWidget {
  PageOne({
    Key key,
  }) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  String _callBackParams;
  String _callBackParams2;

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key al a scaffold para acceder al scaffold desde otro widget hijo
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "BIENVENIDOS",
              style: TextStyle(
                fontFamily: "Maincra",
                fontSize: 40,
              ),
              textAlign: TextAlign.center,
            ),
            Image.asset(
              "assets/descarga.jpg",
              height: 200,
            ),
            Text("Seleccione una opcion:",
              style: TextStyle(
                fontFamily: "OmeaNoNuShinderiu",
                fontSize: 20,
              ),),
            //Image.network("https://pbs.twimg.com/media/EKydvYSXUAE3yLI.jpg",height: 80,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                  color: Colors.blue,
                  child: Text("Pagina 2"),
                  onPressed: () {
                    _showAlertDialog(context);
                  },
                ),
                MaterialButton(
                  child: Text("Pagina 3"),
                  onPressed: () {
                    _openTirdPage(context);
                  },
                ),
              ],
            ),
            Text("Pg. 2 => $_callBackParams", textAlign: TextAlign.center),
            Text("Pg. 3 => $_callBackParams2", textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext ctx) {
    showDialog(
        context: ctx,
        builder: (context) {
          TextEditingController _textController = TextEditingController();
          return AlertDialog(
            title: Text("Ingrese datos"),
            content: TextField(
              controller: _textController,
              maxLength: 10,
              decoration: InputDecoration(
                labelText: "Ingrese Palabra",
              ),
            ),
            actions: <Widget>[
              RaisedButton(
                child: Text("Cancelar"),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("Aceptar"),
                onPressed: () async {
                  Navigator.of(context).pop();
                  await Navigator.of(context)
                      .pushNamed(
                    "/secondPage",
                    arguments: _textController.text,
                  )
                      .then((response) {
                    _callBackParams = response;
                  });
                },
              )
            ],
          );
        });
  }

  void _openTirdPage(BuildContext context) async {
    TextEditingController _textController2 = TextEditingController();
    await Navigator.of(context)
        .pushNamed(
      "/tirdPage",
      arguments: _textController2.text,
    )
        .then(
      (response) {
        _callBackParams2 = response;
      },
    );
  }
}
