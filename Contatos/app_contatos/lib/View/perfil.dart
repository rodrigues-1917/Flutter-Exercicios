import 'dart:developer';

import 'package:app_contatos/Model/contato.dart';
import 'package:app_contatos/Model/contatoService.dart';
import 'package:app_contatos/View/recursos/barraSuperior.dart';
import 'package:app_contatos/View/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class Perfil extends StatelessWidget {
  // Guarda ID do contato selecionado
  final int id;

  // Construtor com o atributo obrigatorio
  Perfil({required this.id});

  // Objeto da classe que contem a busca dos contatos
  ContatoService service = ContatoService();

  @override
  Widget build(BuildContext context) {
    // Objeto da classe contato
    final Contato contato = service.listarContato().elementAt(id);
    return Scaffold(
      appBar: BarraSuperior(),
      drawer: MenuDrawer(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            // Foto
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Image.asset(
                    contato.foto,
                    height: 250,
                    width: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),

            SizedBox(height: 35),

            // Nome
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  contato.nome + " " + contato.sobrenome,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      // Espacamento entre as letras
                      letterSpacing: 2,
                      // Espacamento entre as palavras
                      wordSpacing: 3),
                )
              ],
            ),

            SizedBox(
              height: 15,
            ),

            // Fone e email
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Fone
                Text(
                  contato.fone,
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 18),
                ),
                // Email
                Text(
                  contato.email,
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade400),
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.only(top: 25, bottom: 25),
              child: Divider(height: 5),
            ),

            // Acoes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Ligar
                Column(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.orange.shade400,
                      size: 24,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Ligar",
                      style: TextStyle(
                          color: Colors.orange.shade400, fontSize: 16),
                    ),
                  ],
                ),

                // Mensagem
                Column(
                  children: [
                    Icon(
                      Icons.comment,
                      color: Colors.orange.shade400,
                      size: 24,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Mensagem",
                      style: TextStyle(
                          fontSize: 16, color: Colors.orange.shade400),
                    )
                  ],
                ),

                // Video
                Column(
                  children: [
                    Icon(
                      Icons.videocam_rounded,
                      color: Colors.orange.shade400,
                      size: 24,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Video",
                      style: TextStyle(
                          fontSize: 16, color: Colors.orange.shade400),
                    )
                  ],
                ),

                // Email
                Column(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.orange.shade400,
                      size: 24,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 16, color: Colors.orange.shade400),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        onPressed: () {},
      ),
    );
  }
}
