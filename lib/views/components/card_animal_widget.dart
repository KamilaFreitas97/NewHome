import 'package:flutter/material.dart';

class CardAnimalWidget extends StatelessWidget {
  const CardAnimalWidget(
      {Key? key, required this.aniModel, required this.onPressed})
      : super(key: key);
  final AnimalModel aniModel;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      color: Colors.white,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffFFA19E),
              Colors.white,
            ],
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: size.height * 0.228,
                    width: size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(aniModel.urlPet),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(185),
                        bottomRight: Radius.circular(150),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      aniModel.nome,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 4),
                          child: Icon(
                            Icons.location_on,
                            size: 18,
                          ),
                        ),
                        Text(
                          aniModel.localizacao,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: size.height * 0.24,
              child: IconButton(
                onPressed: onPressed,
                icon: aniModel.favorite
                    ? const Icon(
                        Icons.favorite_border,
                      )
                    : const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget dadosAnimal(String title, String value) {
  return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 20,
    ),
    width: 110,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
        Text(value),
      ],
    ),
  );
}

class AnimalModel {
  final String nome;
  final String localizacao;
  final String urlPet;
  final String descricao;
  final int idade;
  final String genero;
  final double peso;
  bool favorite;

  AnimalModel({
    required this.nome,
    required this.localizacao,
    required this.urlPet,
    required this.favorite,
    required this.descricao,
    required this.idade,
    required this.genero,
    required this.peso,
  });
}
