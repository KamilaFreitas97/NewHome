import 'package:flutter/material.dart';
import 'package:newhome/views/animais/animal_detalhe.dart';
import 'package:newhome/views/components/card_animal_widget.dart';
import 'package:newhome/views/components/card_categoria_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selecionaCategoriaIndex = 0;
  final listAnimais = [
    AnimalModel(
      nome: 'Caramelo',
      localizacao: 'Distância 5km ',
      urlPet:
          "https://img.freepik.com/fotos-gratis/cao-pug-isolado-em-um-fundo-branco_2829-11416.jpg?t=st=1649892981~exp=1649893581~hmac=93bc556b95131182ae863e9d80ed3c4764ad5e5ed2e9d6dc55d3538681e613d8&w=740",
      favorite: true,
      descricao:
          'Olá sou o Caramelo, sou um doguinho muito simpatico e feliz amo comer e dormir.',
      genero: '',
      idade: 2,
      peso: 15,
    ),
    AnimalModel(
      nome: 'Marromzin',
      localizacao: 'Distância 5km ',
      urlPet:
          "https://img.freepik.com/fotos-gratis/golden-retriever-creme-ingles-isolado_155003-32567.jpg?size=626&ext=jpg&ga=GA1.1.650644395.1649538273",
      favorite: true,
      descricao: '',
      genero: '',
      idade: 0,
      peso: 0,
    ),
    AnimalModel(
      nome: 'Carmelita',
      localizacao: 'Distância 5km',
      urlPet:
          "https://img.freepik.com/fotos-gratis/spitz-fofo_144627-7076.jpg?size=338&ext=jpg&ga=GA1.1.650644395.1649538273",
      favorite: false,
      descricao: '',
      genero: '',
      idade: 0,
      peso: 0,
    ),
    AnimalModel(
      nome: 'Meg',
      localizacao: 'Distância 5km',
      urlPet:
          "https://img.freepik.com/fotos-gratis/cachorrinho-fofo-e-pequeno-posando-alegre-isolado-em-cinza_155003-43649.jpg?size=626&ext=jpg&ga=GA1.2.650644395.1649538273",
      favorite: true,
      descricao: '',
      genero: '',
      idade: 0,
      peso: 0,
    ),
    AnimalModel(
      nome: 'Wendy',
      localizacao: 'Distância 5km',
      urlPet:
          "https://img.freepik.com/fotos-gratis/close-vertical-isolado-de-um-gato-malhado-de-pelo-comprido-deitado-segurando-uma-pena-de-passaro-na-boca_181624-46694.jpg?size=338&ext=jpg&ga=GA1.2.650644395.1649538273",
      favorite: false,
      descricao: '',
      genero: '',
      idade: 0,
      peso: 0,
    ),
    AnimalModel(
      nome: 'Mency',
      localizacao: 'Distância 5km',
      urlPet:
          "https://img.freepik.com/fotos-gratis/gato-na-cesta_1339-803.jpg?size=626&ext=jpg&ga=GA1.2.650644395.1649538273",
      favorite: true,
      descricao: '',
      genero: '',
      idade: 0,
      peso: 0,
    ),
    AnimalModel(
      nome: 'Stuart',
      localizacao: 'Distância 5km',
      urlPet:
          "https://img.freepik.com/fotos-gratis/hamster-europeu-em-um-prado-florido_475641-322.jpg?size=626&ext=jpg&ga=GA1.2.650644395.1649538273",
      favorite: false,
      descricao: '',
      genero: '',
      idade: 0,
      peso: 0,
    ),
    AnimalModel(
      nome: 'Peter',
      localizacao: 'Distância 5km',
      urlPet:
          "https://img.freepik.com/fotos-gratis/closeup-tiro-de-uma-cobaia-em-preto-e-branco-na-grama_181624-50221.jpg?size=626&ext=jpg&ga=GA1.1.650644395.1649538273",
      favorite: false,
      descricao: '',
      genero: '',
      idade: 0,
      peso: 0,
    ),
    AnimalModel(
      nome: 'Jeremy',
      localizacao: 'Distância 5km',
      urlPet:
          "https://img.freepik.com/fotos-gratis/porquinho-da-india-1-ano-de-idade-deitado-sobre-um-fundo-branco_191971-24883.jpg?size=626&ext=jpg&ga=GA1.2.650644395.1649538273",
      favorite: true,
      descricao: '',
      genero: '',
      idade: 0,
      peso: 0,
    ),
    AnimalModel(
      nome: 'Park',
      localizacao: 'Distância 5km',
      urlPet:
          "https://img.freepik.com/fotos-gratis/porquinho-da-india-com-maca-alimentar-no-fundo-branco_369656-2036.jpg?size=626&ext=jpg&ga=GA1.2.650644395.1649538273",
      favorite: false,
      descricao: '',
      genero: '',
      idade: 0,
      peso: 0,
    ),
    AnimalModel(
      nome: 'Lorin',
      localizacao: 'Distância 5km',
      urlPet:
          "https://img.freepik.com/fotos-gratis/imagem-aproximada-de-uma-amazona-mealy-meridional-na-imagem-desfocada_181624-44840.jpg?size=626&ext=jpg&ga=GA1.2.650644395.1649538273",
      favorite: true,
      descricao: '',
      genero: '',
      idade: 0,
      peso: 0,
    ),
    AnimalModel(
      nome: 'Nana',
      localizacao: 'Distância 5km',
      urlPet:
          "https://img.freepik.com/fotos-gratis/foto-aproximada-de-um-pintassilgo-macho-sentado-em-um-galho_181624-26251.jpg?size=626&ext=jpg&ga=GA1.2.650644395.1649538273",
      favorite: false,
      descricao: '',
      genero: '',
      idade: 0,
      peso: 0,
    ),
  ];
  final listCategoria = [
    CardCategoriaModel(
      img: "assets/images/icons/clic_img.png",
      titulo: "Todos",
    ),
    CardCategoriaModel(
      img: "assets/images/icons/dog.png",
      titulo: "Cachorro",
    ),
    CardCategoriaModel(
      img: "assets/images/icons/gato.png",
      titulo: "Gato",
    ),
    CardCategoriaModel(
      img: "assets/images/icons/passaro.png",
      titulo: "Passaro",
    ),
    CardCategoriaModel(
      img: "assets/images/icons/roedor.png",
      titulo: "Roedor ",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.9;
    final double itemWidth = size.width / 2;
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 85, top: 50),
                child: InkWell(
                  onTap: () => {},
                  child: Image.asset(
                    "assets/images/drawer.png",
                    width: 45,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20, top: 50),
                child: Text(
                  "Olá, Kamila",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 36),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 50),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/perfil.jpeg"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 30, left: 30, top: 30),
            child: TextField(
              cursorColor: Colors.black,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Procure por um pet',
                hintStyle: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 20),
            child: SizedBox(
              height: 130,
              width: size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listCategoria.length,
                itemBuilder: (context, index) {
                  final item = listCategoria[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: CardCategoria(
                      selecionaCategoriaIndex: selecionaCategoriaIndex,
                      img: item.img,
                      index: listCategoria.indexOf(item),
                      titulo: item.titulo,
                      onPressed: () {
                        setState(() {
                          selecionaCategoriaIndex = index;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              height: size.height * 0.501,
              width: size.width,
              child: GridView.count(
                // Cria um grid com duas colunas
                childAspectRatio: (itemWidth / itemHeight),
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                // Gera 100 Widgets que exibem o seu índice
                children: List.generate(
                  listAnimais.length,
                  (index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return AnimalDetalhe(
                              aniModel: listAnimais[index],
                            );
                          }),
                        );
                      },
                      child: CardAnimalWidget(
                        aniModel: listAnimais[index],
                        onPressed: () {
                          setState(() {
                            listAnimais[index].favorite =
                                !listAnimais[index].favorite;
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
