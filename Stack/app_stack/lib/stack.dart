import 'package:flutter/material.dart';

class StackPilha extends StatefulWidget {
  @override
  State createState() => StackPilhaState();
}

class StackPilhaState extends State<StackPilha> {
  @override
  Widget build(BuildContext context) {
    // Construcao do aplicativo de fato
    return MaterialApp(
      // Esqueleto (appBar - drawer - body - bottomNavigationBar)
      home: Scaffold(
          appBar: AppBar(
            title: Text("Stack - pilha"),
          ),
          drawer: Drawer(),

          // Corpo do app usando Stack com prioridade definida com ordem de cohdigo
          body: Stack(
            children: [
              // Primeiro elemento ( ficara embaixo de todos os outros)
              Container(
                child: Text(
                  "Stack 01",
                  style: TextStyle(fontSize: 24),
                ),
                //margin: EdgeInsets.all(50),
                color: Colors.purple,
                padding: EdgeInsets.all(10),
                width: 250,
                height: 350,
              ),

              // Segundo elemento
              Container(
                margin: EdgeInsets.all(50),
                child: Text(
                  "Stack 02",
                  style: TextStyle(fontSize: 24),
                ),
                color: Colors.purple.shade700,
                padding: EdgeInsets.all(10),
                width: 250,
                height: 350,
              ),

              // Terceiro elemento
              Container(
                margin: EdgeInsets.all(100),
                child: Text(
                  "Stack 03",
                  style: TextStyle(fontSize: 24),
                ),
                color: Colors.purple.shade900,
                padding: EdgeInsets.all(10),
                width: 250,
                height: 350,
              )
            ],
          ),


          bottomNavigationBar: BottomNavigationBar(
            items: [
              // icone home
              BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
              //icone
              BottomNavigationBarItem(label: "Sair", icon: Icon(Icons.logout))
            ],
          )),
    );
  }
}
