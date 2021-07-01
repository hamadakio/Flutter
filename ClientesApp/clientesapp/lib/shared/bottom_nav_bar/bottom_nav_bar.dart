import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 40,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
                size: 70,
              ),
              label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.receipt,
                size: 40,
              ),
              label: "Clientes")
        ]);
  }
}
