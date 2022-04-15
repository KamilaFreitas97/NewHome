import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:newhome/views/home/home_page.dart';

class NavHomePage extends StatefulWidget {
  const NavHomePage({Key? key}) : super(key: key);

  @override
  State<NavHomePage> createState() => _NavHomePageState();
}

class _NavHomePageState extends State<NavHomePage> {
  int _selectIndex = 0;
  final controller = ScrollController;
  final widgetsHomes = [
    const HomePage(),
    const Text('Index 1: Favoritos',
        style: TextStyle(color: Colors.red, fontSize: 30)),
    const Text(
      'Index 2: Notificacao',
      style: TextStyle(color: Colors.red, fontSize: 30),
    ),
    const Text('Index 3: Busca',
        style: TextStyle(color: Colors.red, fontSize: 30)),
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: CurvedNavigationBar(
          height: 55,
          backgroundColor: Colors.transparent,
          color: const Color(0xffFFA19E),
          items: const <Widget>[
            Icon(
              Icons.home,
              size: 25,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite,
              size: 25,
              color: Colors.white,
            ),
            Icon(
              Icons.search,
              size: 25,
              color: Colors.white,
            ),
            Icon(
              Icons.person,
              size: 25,
              color: Colors.white,
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectIndex = index;
            });
          },
        ),
        body: SafeArea(
          child: widgetsHomes[_selectIndex],
        ),
      ),
    );
  }
}
