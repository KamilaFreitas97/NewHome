import 'package:flutter/material.dart';
import 'package:newhome/views/components/button_widget.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: const Color(0xffFFA19E),
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.55,
                child: Image.asset(
                  'assets/images/login.png',
                  fit: BoxFit.cover,
                ),
                color: const Color(0xffFFA19E),
              ),
              Positioned(
                top: size.height * 0.35,
                child: Container(
                  height: size.height * 0.7,
                  width: size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          "Faça Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff434343),
                            fontSize: 50,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.only(right: 30, left: 30),
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            labelText: 'E-mail',
                            labelStyle: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.only(right: 30, left: 30),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: size.width * 0.87,
                          height: size.height * 0.05,
                          child: ButtonWidget(
                            onPress: () {
                              Navigator.popAndPushNamed(context, "/home_page");
                            },
                            texto: 'Entrar',
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: size.width * 0.27,
                              height: 1,
                              color: const Color(0xff656565),
                            ),
                            const Text(
                              'Ou se preferir',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff656565),
                                  fontSize: 24),
                            ),
                            Container(
                              width: size.width * 0.27,
                              height: 1,
                              color: const Color(0xff656565),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: size.width * .89,
                          child: ElevatedButton.icon(
                            icon: Padding(
                              padding: const EdgeInsets.only(bottom: 4, top: 4),
                              child:
                                  Image.asset('assets/images/logo_google.png'),
                            ),
                            label: const Text(
                              'Entrar com Google',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shadowColor: const Color(0xff656565),
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: size.width * .89,
                          child: ElevatedButton.icon(
                            icon: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, bottom: 4, top: 4),
                              child: Image.asset(
                                'assets/images/facebook_logo.png',
                                width: 59,
                              ),
                            ),
                            label: const Text(
                              'Entrar com Facebook',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shadowColor: const Color(0xff656565),
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
