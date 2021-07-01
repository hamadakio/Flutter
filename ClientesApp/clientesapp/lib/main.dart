import 'package:clientesapp/modules/home/home_page.dart';
import 'package:clientesapp/modules/pages/add_cliente/add_cliente_page.dart';
import 'package:clientesapp/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Clientes',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: AddClientePage(),
    );
  }
}
