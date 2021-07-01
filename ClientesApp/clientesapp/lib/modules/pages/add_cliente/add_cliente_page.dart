import 'package:clientesapp/shared/themes/app_text_styles.dart';
import 'package:clientesapp/shared/widgets/input_text_widget.dart';
import 'package:flutter/material.dart';

class AddClientePage extends StatefulWidget {
  AddClientePage({Key? key}) : super(key: key);

  @override
  _AddClientePageState createState() => _AddClientePageState();
}

class _AddClientePageState extends State<AddClientePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: false,
        title: Text("Cadastrar Cliente"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.save,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Text(
                  "Preecha com os dados do(a) Cliente",
                  textAlign: TextAlign.center,
                  style: TextStyles.titleRegularBoldSecondary,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Form(
                  child: Column(
                children: [
                  InputTextWidget(
                      label: "Nome do Cliente",
                      icon: Icons.description,
                      onChanged: (value) {}),
                  InputTextWidget(
                      inputType: TextInputType.number,
                      label: "CPF",
                      icon: Icons.credit_card,
                      onChanged: (value) {}),
                  InputTextWidget(
                      inputType: TextInputType.number,
                      label: "RG",
                      icon: Icons.account_box,
                      onChanged: (value) {}),
                  InputTextWidget(
                      label: "Endereço",
                      icon: Icons.location_on,
                      onChanged: (value) {}),
                  InputTextWidget(
                      inputType: TextInputType.number,
                      label: "Telefone 1",
                      icon: Icons.local_phone,
                      onChanged: (value) {}),
                  InputTextWidget(
                      inputType: TextInputType.number,
                      label: "Telefone 2",
                      icon: Icons.local_phone,
                      onChanged: (value) {})
                ],
              ))
            ],
          ),
        )),
      ),
    );
  }
}
