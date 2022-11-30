// Requisitos para rodar app:
//  - classe para criar estado mutahvel
//  - classe para retornar a construcao do app
//  - usar a funcao "runApp" no VOID MAIN, utilizando
//    como argumento a funcao "MaterialApp", e como argumento
//    da MaterialApp dois 'atributos' (ou mais):
//      title: "Titulo do app"
//      home : nomeDaClasseComEstadoMutahvelCriada()
//             nesse exemplo: Ratatouille()

// Funcoes usadas:
//  - MaterialApp():
//      title: titulo do app
//      home: chamada de classe construtora de estado
//      debugShowCheckedModeBanner: retira a faixa "debug" da tela do app
//  - Scaffold():
//      appBar             : Barra de titulo
//      drawer             : Menu lateral hambuerguer
//      body               : Corpo
//      bottomNavigationBar: Fim da pagina do app, rodapeh
//  - AppBar():
//      title: titulo da appbar
//      backgroundcolor: cor de fundo da appbar
//      leadingWidth: largura do icone
//      leading: proprio icone
//  - Icon():
//      Como argumento podemos chamar o objeto da classe de icones do flutter "Icons.nome_do_icone"

// Funcoes derivadas de classes
//  - Transform.translate: transforma a largura e altura para algum valor desejado
//                         pode ser chamado apohs um "leading: " e ele alterarah a
//                         altura e largura do espacamento
//  - Icons.nome_do_icone: busca o item desejado na biblioteca de icones do flutter

import 'package:flutter/material.dart';

class Ratatouille extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RatatouilleState();
}

class RatatouilleState extends State<Ratatouille> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ratatouille'),
        backgroundColor: Colors.orange.shade600,
        leadingWidth: 25,
        leading: Transform.translate(
            offset: Offset(10, 0),
            child: Image.asset("assets/img/ratatouille.png")),
      ),
      //drawer: ,
      //body: ,
      //bottomNavigationBar: ,
    );
  }
}
