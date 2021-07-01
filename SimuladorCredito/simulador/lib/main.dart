import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simulador',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(
        title: 'Vem Q Tem'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController valueController = TextEditingController();
  String valorjuros = "R\$: 0,00";
  String parcela2x = "2x";
  String parcela3x = "3x";
  String parcela4x = "4x";
  String parcela5x = "5x";
  String parcela6x = "6x";

  void resetFields(){
    valueController.text = "";
    valorjuros = "R\$: 0,00";
    parcela2x = "2x";
    parcela3x = "3x";
    parcela4x = "4x";
    parcela5x = "5x";
    parcela6x = "6x";
  }


  void calcular() {
    setState(() {
     double valor = double.parse(valueController.text);

     valor = valor + (valor*(30/100));
     double p2 = valor / 2;
     double p3 = valor / 3;
     double p4 = valor / 4;
     double p5 = valor / 5;
     double p6 = valor / 6;



     valorjuros = "R\$ : $valor";
     parcela2x = "2x : R\$ : " + p2.toStringAsFixed(2);
     parcela3x = "3x : R\$ : " + p3.toStringAsFixed(2);
     parcela4x = "4x : R\$ : " + p4.toStringAsFixed(2);
     parcela5x = "5x : R\$ : " + p5.toStringAsFixed(2);
     parcela6x = "6x : R\$ : " + p6.toStringAsFixed(2);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title ,
        style: TextStyle(
          fontSize: 40.0,
        ),
        ),
      ),
      body: SingleChildScrollView(
        child:Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Simulador" ,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50.0
                ),
                ),
              ),
              TextFormField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Insira o Valor",
                  hintText: "R\$:",
                  labelStyle: TextStyle(
                    color: Colors.purple,
                  )
                ),
                style: TextStyle(
                  color: Colors.purple ,
                  fontSize: 20.0,
                ),
                controller: valueController,                
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10.0 ,
                  bottom: 10.0
                ),
                child : Container(
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: (){
                      if(formKey.currentState!.validate())
                      {
                        calcular();
                      }
                    }, 
                    child: Text("Calcular" , 
                    style: TextStyle(
                      fontSize: 25.0
                    )
                    ),
                  ),
                )
                ),
                Text("$valorjuros" , 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 25.0
                ),
                ),
                Text("$parcela2x" , 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 25.0
                ),
                ),
                Text("$parcela3x" , 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 25.0
                ),
                ),
                Text("$parcela4x" , 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 25.0
                ),
                ),
                Text("$parcela5x" , 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 25.0
                ),
                ),
                Text("$parcela6x" , 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 25.0
                ),
                ),
            ],
          ),
        ) ,
        ),      
    );
  }
}
