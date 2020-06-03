//tipo material
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Contador de Pessoas", home: Home()));
}

//stateful pode ser alterado pois possui um estado interno
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infoText = "Pode entrar";

  //atualiza o local com as modificaçoes
  void _changePeople(int delta) {
    setState(() {
      _people += delta;

      if (_people < 0) {
        _infoText = "Mundo Invertido";
      } else if (_people <= 10) {
        _infoText = "Pode Entrar !!";
      } else {
        _infoText = "Lotado!!!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.deepPurpleAccent,
        ),
        //criada uma coluna //eixo principal da coluna é vertical
        Column(
          //altera o alinhamento da coluna para o centro
          mainAxisAlignment: MainAxisAlignment.center,
          //filhos da coluna
          children: <Widget>[
            //texto com a string,e style
            Text(
              "Pessoas : $_people",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text("+1",
                        style: TextStyle(fontSize: 40.0, color: Colors.white)),
                    onPressed: () {
                      _changePeople(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text("-1",
                        style: TextStyle(fontSize: 40.0, color: Colors.white)),
                    onPressed: () {
                      _changePeople(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              _infoText,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            )
          ],
        )
      ],
    );
  }
}
