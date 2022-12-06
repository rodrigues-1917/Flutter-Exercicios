import 'package:app_contatos/Model/contatoService.dart';
import 'package:app_contatos/View/perfil.dart';
import 'package:app_contatos/View/recursos/barraSuperior.dart';
import 'package:app_contatos/View/recursos/cadastro.dart';
import 'package:app_contatos/View/recursos/menu.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../Model/contato.dart';

class Busca extends StatefulWidget {
  @override
  State createState() => BuscaState();
}

class BuscaState extends State<Busca> {
  // Objeto de Model
  ContatoService service = ContatoService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraSuperior(),
      drawer: MenuDrawer(),
      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
        itemCount: service.listarContato().length,
        itemBuilder: (BuildContext context, int index) {
          // Guarda o retorno da lista no objeto da classe
          Contato contato = service.listarContato().elementAt(index);
          return Container(
            color: Colors.grey.shade800,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: ListTile(
              title: Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Foto miniatura
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      contato.foto,
                      width: 60,
                      height: 60,
                      //Cobrir o que ficar fora do circulo
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(
                    width: 20,
                  ),

                  // Nome e fone
                  Column(
                    children: [
                      Container(
                        child: Text(contato.nome + " " + contato.sobrenome),
                        height: 20,
                        width: 150,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text(contato.fone),
                            width: 150,
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                  size: 17,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Perfil(
                                id: contato.id,
                              )));
                },
              ),
            ),
          );
        },
      ),

      // Botao flutuante
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cadastro()));
          }),
    );
  }
}
