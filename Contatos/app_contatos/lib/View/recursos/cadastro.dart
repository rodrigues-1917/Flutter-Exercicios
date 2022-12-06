import 'package:app_contatos/Model/contato.dart';
import 'package:app_contatos/Model/contatoService.dart';
import 'package:app_contatos/View/busca.dart';
import 'package:app_contatos/View/recursos/barraSuperior.dart';
import 'package:app_contatos/View/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Cadastro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CadastroState();
}

class CadastroState extends State<Cadastro> {
  // Controladores para os campos input
  final nome = TextEditingController();
  final sobrenome = TextEditingController();
  final email = TextEditingController();
  final fone = TextEditingController();
  final foto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraSuperior(),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        // Formulario
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade800),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Titulo
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text(
                    "Cadastro de contato",
                    style: TextStyle(color: Colors.grey.shade300, fontSize: 18),
                  ),
                ),

                campoInput("Nome", nome),
                campoInput("Sobrenome", sobrenome),
                campoInput("Email", email),
                campoInput("Fone", fone),
                campoInput("Foto", foto),

                SizedBox(
                  height: 15,
                ),

                // Botoes
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Botao cadastrar
                    Builder(builder: (BuildContext context) {
                      return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange),
                          onPressed: () {
                            cadastrar();
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            child: Text(
                              "Cadastrar",
                              style: TextStyle(color: Colors.white),
                            ),
                          ));
                    }),
                    // Botao limpar
                    Builder(builder: (BuildContext context) {
                      return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade600),
                          onPressed: () {
                            limpar();
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            child: Text(
                              "Limpar",
                              style: TextStyle(color: Colors.white),
                            ),
                          ));
                    }),
                  ],
                ),
              ]),
        ),
      ),
    );
  }

  // Retorna a estrutura do campo input
  Container campoInput(String nomeCampo, TextEditingController controlador) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: TextField(
        controller: controlador,
        decoration: InputDecoration(
          labelText: nomeCampo,
          labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange),
          ),
        ),
      ),
    );
  }

  // Cadastrar
  void cadastrar() {
    ContatoService service = ContatoService();

    // Guardar ultimo id cadastrado
    int ultimoId = service.listarContato().length;

    Contato contato = Contato(
        id: ultimoId,
        nome: nome.text,
        email: email.text,
        fone: fone.text,
        sobrenome: sobrenome.text,
        foto: foto.text);

    // Envia o objeto preenchido para adicionar na lista
    String mensagem = service.cadastrarContato(contato);
    // Mostra a mensagem com snackbar
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(mensagem),
      duration: Duration(milliseconds: 2000),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.grey.shade800,
    ));

    // Redireciona para a tela de busca
    Future.delayed(Duration(milliseconds: 500), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Busca()));
    });
  }

  // Limpar os campos
  void limpar() {
    nome.text = "";
    sobrenome.text = "";
    email.text = "";
    fone.text = "";
    foto.text = "";
  }
}
