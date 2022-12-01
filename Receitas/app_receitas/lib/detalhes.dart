import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  // Dados do banco de dados
  String foto = "assets/img/bolo.png";
  String nome = "Bolo cremoso";
  String tempoPreparo = "40 minutos";
  String numeroFavoritos = "1.123";
  String numeroComentarios = "289";
  String porcoes = "5";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Imagem
        Image.asset(foto),

        // Titulo e infos
        Container(
          color: Colors.orange.shade300,
          //height: 50,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              // Titulo receita
              Text(
                nome,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              // Espacamento
              SizedBox(
                height: 2,
                child: Container(
                  color: Colors.white,
                ),
              ),

              SizedBox(
                height: 5,
              ),

              // Icones
              Row(
                // Distribui os elementos (colunas)
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Preparo
                  Column(
                    children: [
                      // Icone relogio
                      Icon(
                        Icons.access_time_sharp,
                        color: Colors.white,
                        size: 32,
                      ),

                      // Espacamento
                      SizedBox(
                        height: 5,
                      ),

                      // Texto abaixo do relogio
                      Text(
                        "PREPARO",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // Espacamento
                      SizedBox(
                        height: 10,
                      ),

                      // Texto abaixo de PREPARO
                      Text(
                        tempoPreparo,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),

                  // Rendimento
                  Column(
                    children: [
                      // Icone
                      Icon(
                        Icons.fastfood_outlined,
                        color: Colors.white,
                        size: 32,
                      ),

                      // Espacamento
                      SizedBox(
                        height: 5,
                      ),

                      // Texto
                      Text(
                        "RENDIMENTO",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // Espacamento
                      SizedBox(
                        height: 10,
                      ),

                      // Texto
                      Text(
                        "$porcoes porções",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),

                  // FAVORITOS
                  Column(
                    children: [
                      // Icone
                      Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 32,
                      ),

                      // Espacamento
                      SizedBox(
                        height: 5,
                      ),

                      // Texto
                      Text(
                        "FAVORITOS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // Espacamento
                      SizedBox(
                        height: 10,
                      ),

                      // Texto
                      Text(
                        numeroFavoritos,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),

                  // COMENTARIOS
                  Column(
                    children: [
                      // Icone
                      Icon(
                        Icons.comment_rounded,
                        color: Colors.white,
                        size: 32,
                      ),

                      // Espacamento
                      SizedBox(
                        height: 5,
                      ),

                      // Texto
                      Text(
                        "COMENTÁRIOS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // Espacamento
                      SizedBox(
                        height: 10,
                      ),

                      // Texto
                      Text(
                        numeroComentarios,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        // Ingredientes
        Container(
          child: Column(children: [
            SizedBox(
              height: 10,
            ),

            // Icone e ingrediente
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.menu_book_rounded,
                  color: Colors.orange,
                ),
                Text(
                  "Ingredientes",
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            // Lista de ingredientes
            Container(
              padding: EdgeInsets.all(20),
              child: Row(children: [
                Text(
                  "- 4 ovos\n" +
                      "- 1 lata de milho verde\n" +
                      "- 500 ml de leite\n" +
                      "- 100 gramas colheres de sopa de côco ralado",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w300),
                ),
              ]),
            ),

            // Icone e modo de preparo
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.cookie_rounded,
                  color: Colors.orange,
                ),
                Text(
                  "Modo de preparo",
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            // Modo de preparo
            Container(
              padding: EdgeInsets.all(20),
              child: Row(children: [
                Text(
                  "1. Bata no liquidificador os ovos...\n" +
                      "2. Acrescente o milho e bata....\n" +
                      "3. Faça um story\n" +
                      "4. Mande uma prova para mim",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w300),
                ),
              ]),
            ),
          ]),
        ),
      ],
    );
  }

// Metodo que retorna texto, manipulacao de texto
/*
  Text marcarTexto(String texto) {

    Text marcador = Text("\u2022 $texto", style: TextStyle(fontSize: 24));

    return marcador;
  }*/
}
