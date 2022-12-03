import 'package:app_contatos/Model/contato.dart';

class ContatoService {
  List listarContato() {
    // Cria a lista de contatos
    List<Contato> contatos = [
      Contato(
          id: 1,
          nome: "Lucas",
          sobrenome: "Nascimento",
          email: "nascimento@gmail.com",
          fone: "45 5577-8988",
          foto: "assets/img/1.jpg"),
      Contato(
          id: 2,
          nome: "Mathes",
          sobrenome: "Lops",
          email: "lopes@gmail.com",
          fone: "45 2485-8878",
          foto: "assets/img/2.jpg"),
      Contato(
          id: 3,
          nome: "Luiz",
          sobrenome: "Carlos",
          email: "carlinho@gmail.com",
          fone: "45 4585-1458",
          foto: "assets/img/3.jpg"),
    ];

    return contatos;
  }
}
