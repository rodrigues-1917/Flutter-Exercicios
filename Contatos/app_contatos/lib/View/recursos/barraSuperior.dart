import 'package:flutter/material.dart';

// A classe barra superior vai receber o que possui na appbar, usando
// o construtor e dando a ele super, o que tiver nesse construtor
// tambem teremos no item appbar, que chamaremos no scaffold na nossa home
class BarraSuperior extends AppBar {
  BarraSuperior()
      : super(
          title: Text(
            "Agenda de contatos",
            style: TextStyle(color: Colors.orange.shade400, fontSize: 22),
          ),
          // Remove o icone original
          automaticallyImplyLeading: false,
          centerTitle: true,
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Icon(
                  Icons.menu,
                ));
          }),

          // Menu (icone) Altera todos os icones
          iconTheme: IconThemeData(color: Colors.orange.shade400),
        );
}
