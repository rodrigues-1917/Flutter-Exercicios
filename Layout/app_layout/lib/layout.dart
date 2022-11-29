import 'package:flutter/material.dart';

// Para a classe Layout se comportar como widget dentro do flutter
// extendemos a classe com um estado que pode ser alterado (stateful)
class Layout extends StatefulWidget {
  // Deve se sobreescrever o metodo create state usando override
  @override
  // Criamos um estado da classe LayouState, onde esta nosso construtor build
  State createState() => LayoutState();
}

// Essa classe tem estado Layout, por isso extendemos do estado Layout
class LayoutState extends State<Layout> {
  Row criarRow(String texto) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        margin: EdgeInsets.only(top: 15),
        child: Text(
          "Linha 1",
          style: TextStyle(color: Colors.white),
        ),
        width: 400,
        color: Colors.green.shade300,
        padding: EdgeInsets.all(10),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Barra de titulo
        appBar: AppBar(
          title: Text("Layout - Flutter"),
          backgroundColor: Colors.green.shade700,
        ),

        // Menu lateral (hamburguer)
        drawer: Drawer(
          // Child eh um atributo, diferente de children
          child: ListView(
            // Padding eh espacamento
            padding: EdgeInsets.zero,
            // Children eh uma lista, nesse caso de widgets
            children: <Widget>[
              // Cabecalho do menu
              DrawerHeader(
                  child: Text("Menu de ferramentas"),
                  decoration: BoxDecoration(color: Colors.green.shade700)),

              // item 1 do menu
              // ListTile serah um bloco
              ListTile(
                title: Text("Flutter"),
                subtitle: Text("flutterzinho"),
                // Icone no comeco do bloco
                leading: Icon(
                  Icons.flash_on,
                  color: Colors.red.shade900,
                  size: 24,
                ),
                // Icone no fim do bloco
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              // item 2 do menu
              ListTile(
                title: Text("Dart"),
                subtitle: Text("Dartzinho"),
                leading:
                    Icon(Icons.mood, color: Colors.green.shade900, size: 24),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              // item 3 do menu
              ListTile(
                title: Text("VS"),
                subtitle: Text("VSzinho"),
                leading: Icon(Icons.rocket, color: Colors.black, size: 24),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              // item 4 do menu
              ListTile(
                title: Text("Config"),
                subtitle: Text("Configzinho"),
                leading: Icon(Icons.settings, color: Colors.teal, size: 24),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              // Versao do app
            ],
          ),
        ),

        // Corpo do app
        /*body: Center(
          // Botao elevado
          child: ElevatedButton(
            // Titulo do botao
            child: Text("Mostrar SnackBar"),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll<Color>(Colors.green.shade700)),
            // Quando for pressionado
            onPressed: () {
              // Final pois nao sera mais alterado
              // SnackBar sera a barra escura que aparecera no rodape
              // Aqui estamos criando ela (ainda nao estamos chamando)
              final snackBar = SnackBar(
                // Texto que sera impresso na barra
                content: Text("Os guri tao demais"),
                // Duracao que ficara sendo exibido
                duration: Duration(milliseconds: 40000),
                // Comportamento da barra, nesse caso ira flutuar
                behavior: SnackBarBehavior.floating,
                // Acao da barra, sera o botao existente na barra
                action: SnackBarAction(
                  label: "Com ctz",
                  onPressed: () {
                    // Codigo de alguma funcao
                  },
                ),
              );

              // Agora sim, estamos chamando a snackbar (barra escura)
              // Chamamos a snackbar criada acima
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ),*/

        body: Column(
          children: [
            criarRow("Linha 01"),
            criarRow("Linha 02"),
            criarRow("Linha 03")
          ],
        ),

        // Barra de icones, pertence ao scaffold
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            // icone home
            BottomNavigationBarItem(
                icon: Icon(Icons.water_drop), label: "Home"),

            // icone configuracoes
            BottomNavigationBarItem(
                icon: Icon(Icons.thermostat_rounded), label: "Configuracoes"),

            // icone login
            BottomNavigationBarItem(
                icon: Icon(Icons.lightbulb_outline), label: "Login")
          ],
        ),
      ),
    );
  }
}
