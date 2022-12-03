import 'package:app_contatos/View/home.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  // Atributos vindos do banco de dados
  final String usuario = "Kalebe Rodrigues";
  final String email = "kaleberodrigues@gmail.com";
  final String fotoPerfil = "assets/img/kalebe.jpg";

  Text mostrarTitulo(String texto) {
    return Text(
      texto,
      style: TextStyle(fontSize: 14),
    );
  }

  Text mostrarSubTitulo(String texto) {
    return Text(
      texto,
      style: TextStyle(fontSize: 10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // Foto e informacoes do usuario logado
          UserAccountsDrawerHeader(
            accountName: Text(usuario),
            accountEmail: Text(email),
            decoration: BoxDecoration(color: Colors.grey.shade900),
            currentAccountPicture: CircleAvatar(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(fotoPerfil),
              ),
            ),
          ),

          // Botao home
          ListTile(
            title: mostrarTitulo("Home"),
            subtitle: mostrarSubTitulo("Página inicial"),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.orange,
              size: 20,
            ),
            leading: Icon(
              Icons.home_filled,
              color: Colors.orange,
              size: 28,
            ),
            onTap: () {
              // Metodo navegar usando como rota o materialpageroute
              // Irah do contexto (pagina atual) para a home
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),

          // Botao perfil
          ListTile(
            title: mostrarTitulo("Perfil"),
            subtitle: mostrarSubTitulo("Editar configurações"),
            leading: Icon(
              Icons.contact_mail_rounded,
              color: Colors.orange,
              size: 28,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.orange,
              size: 20,
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => Home())));
            },
          ),

          // Botao contato
          ListTile(
            title: mostrarTitulo("Contatos"),
            subtitle: mostrarSubTitulo("Gerenciar contatos"),
            leading: Icon(
              Icons.contact_page,
              color: Colors.orange,
              size: 28,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.orange,
              size: 20,
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => Home())));
            },
          ),

          // Botao configuracoes
          ListTile(
            title: mostrarTitulo("Configurações"),
            subtitle: mostrarSubTitulo("Ajustes no sistema"),
            leading: Icon(
              Icons.settings,
              color: Colors.orange,
              size: 28,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.orange,
              size: 20,
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),

          // Botao logout
          ListTile(
            title: mostrarTitulo("Logout"),
            subtitle: mostrarSubTitulo("Finalizar sessão"),
            leading: Icon(
              Icons.logout,
              color: Colors.grey,
              size: 28,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey,
              size: 20,
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
        ],
      ),
    );
  }
}
