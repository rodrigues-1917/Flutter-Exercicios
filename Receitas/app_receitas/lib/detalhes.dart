import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.shade300,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: Column(children: [
        // Titulo receita
        Text(
          "Bolo cremoso",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),

        // Espacamento
        SizedBox(
          height: 20,
        ),

        //Icones
        Row(
          // Distribui os elementos (colunas)
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Espacamento
                SizedBox(
                  height: 5,
                ),

                // Texto abaixo de PREPARO
                Text(
                  "40 minutos",
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

                // Texto

                // Texto
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
