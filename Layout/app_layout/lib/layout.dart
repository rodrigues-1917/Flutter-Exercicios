import 'package:flutter/material.dart';

// Para a classe Layout se comportar como widget dentro do flutter
// extendemos a classe com um estado que pode ser alterado (stateful)
class Layout extends StatefulWidget{
  // Deve se sobreescrever o metodo create state usando override
  @override
  // Criamos um estado da classe LayouState, onde esta nosso construtor build
  State createState() => LayoutState();
}

// Essa classe tem estado Layout, por isso extendemos do estado Layout
class LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Barra de titulo
        appBar: AppBar(title: Text("Layout - Flutter")),

        // Menu lateral (hamburguer)
        drawer: Drawer(

        ),

        // Corpo do app
        body: Center(
          child: Text("Layout basico")
        ),

        // Barra de icones
        bottomNavigationBar: BottomNavigationBar(
          items: [
            // icone home
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"),

            // icone configuracoes
            BottomNavigationBarItem(
              icon:  Icon(Icons.settings),
              label: "Configuracoes"),

            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: "Login")
          ],
        ),
      ),
    );
  }
}