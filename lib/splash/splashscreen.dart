import 'package:flutter/material.dart';
import 'package:newhome/views/components/button_widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  /*startTime() async {
    var _duraction = const Duration(seconds: 20);
    return Timer(_duraction, navigationPage);
  }*/

  void navigationPage() {
    Navigator.popAndPushNamed(context, "/home_page");
  }

  @override
  void initState() {
    super.initState();
    //startTime();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: const Color(0xff1d1d1d),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                "FAÇA UM NOVO AMIGO",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 28),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Adote um pet hoje!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24),
              ),
            ),
            const SizedBox(height: 11),
            SizedBox(
              width: size.width * 0.4,
              height: size.height * 0.04,
              child: ButtonWidget(
                onPress: () {
                  Navigator.popAndPushNamed(context, "/login");
                },
                texto: 'Vamos lá?',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 163),
              child: Container(
                height: size.height * 0.585,
                width: size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/splash.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(500),
                      topRight: Radius.circular(500),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
