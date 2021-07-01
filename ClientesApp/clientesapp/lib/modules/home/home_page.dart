import 'package:clientesapp/shared/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Clientes",
            style: GoogleFonts.ubuntu(fontSize: 35),
          ),
        ),
        body: Container(),
        bottomNavigationBar: BottomNavBar());
  }
}
