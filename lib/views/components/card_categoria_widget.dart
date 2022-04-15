import 'package:flutter/material.dart';

class CardCategoria extends StatelessWidget {
  final Function() onPressed;
  final int selecionaCategoriaIndex;
  final String img;
  final int index;
  final String titulo;

  const CardCategoria(
      {Key? key,
      required this.onPressed,
      required this.selecionaCategoriaIndex,
      required this.img,
      required this.index,
      required this.titulo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onPressed,
          child: Container(
            height: 70,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: selecionaCategoriaIndex == index
                  ? const Color(0xffFFA19E)
                  : Colors.white,
            ),
            child: Image.asset(
              img,
              color: selecionaCategoriaIndex == index
                  ? Colors.white
                  : Colors.black,
            ),
          ),
        ),
        Text(
          titulo,
          style: const TextStyle(color: Colors.white, fontSize: 22),
        ),
      ],
    );
  }
}

class CardCategoriaModel {
  String img;
  String titulo;

  CardCategoriaModel({required this.img, required this.titulo});
}
