import 'package:flutter/material.dart';
import 'package:newhome/splash/splashscreen.dart';
import 'package:newhome/views/nav_home_page.dart';
import 'package:newhome/views/login/login.dart';

//metodo Dart que vai iniciar a aplicação
void main() => runApp(const AppWidget());

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      //home: const SplashPage(),
      //home: const Login(),
      //home: const NavHomePage(),
      //home: const AnimalDetalhe(),
      home: const NavHomePage(),
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      routes: {
        '/navehomepage': (context) => const NavHomePage(),
        '/splash': (context) => const SplashPage(),
        '/login': (context) => const Login(),
        '/home_page': (context) => const NavHomePage(),
        //'/animal_detalhe': (context) => const AnimalDetalhe(),
      },
    );
  }
}
