import 'package:flutter/material.dart';
import 'package:newhome/views/components/button_widget.dart';
import 'package:newhome/views/components/card_animal_widget.dart';

class AnimalDetalhe extends StatelessWidget {
  final AnimalModel aniModel;
  const AnimalDetalhe({
    Key? key,
    required this.aniModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: size.width,
                height: size.height * 0.53,
                child: Image.network(
                  aniModel.urlPet,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.53,
              child: Container(
                height: size.height * 0.5,
                width: size.width,
                decoration: const BoxDecoration(
                  //color: Color(0xffFFA19E),
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          aniModel.nome,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/icons/localização.png',
                            width: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              aniModel.localizacao,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          aniModel.descricao,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          bottom: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            dadosAnimal("Idade", "${aniModel.idade} ano"),
                            dadosAnimal("Gênero", aniModel.genero),
                            dadosAnimal("Peso", "${aniModel.peso} Kg"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      Center(
                        child: ButtonWidget(
                          texto: "Entrar em contato",
                          onPress: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
