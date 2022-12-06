import 'package:app_contatos/View/busca.dart';
import 'package:app_contatos/View/recursos/barraSuperior.dart';
import 'package:app_contatos/View/recursos/cadastro.dart';
import 'package:app_contatos/View/recursos/menu.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Titulo do app
      appBar: BarraSuperior(),

      // Menu
      drawer: MenuDrawer(),

      // Corpo
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
              //padding: EdgeInsets.symmetric(horizontal: ,vertical: ),
              //padding: EdgeInsets.all(20),
              //width: 150,
              //height: 100,
              //color: Colors.blue,

              child: Column(children: [
                // Titulo
                Text(
                  "Buenas, o que vamos fazer?",
                  style: TextStyle(color: Colors.grey.shade300, fontSize: 20),
                ),

                SizedBox(
                  height: 20,
                ),

                // Botao buscar contato
                Builder(
                  builder: (BuildContext context) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        width: 300,
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Buscar contatos",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Busca()));
                      },
                    );
                  },
                ),

                SizedBox(
                  height: 20,
                ),

                // Botao cadastrar contato
                Builder(
                  builder: (BuildContext context) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        width: 300,
                        padding: EdgeInsets.all(16),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Cadastrar contato",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ]),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Cadastro()));
                      },
                    );
                  },
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
