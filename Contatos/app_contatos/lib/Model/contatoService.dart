import 'package:app_contatos/Model/contato.dart';

class ContatoService {
  // Atributos da classe
  // Necessario usar static para que a lista nao seja criada
  // novamente, dessa forma quando usada em busca, ou usada
  // aqui mesmo, estaremos nos referindo a mesma lista
  static List<Contato> contatos = [];

  String cadastrarContato(Contato contato) {
    contatos.add(contato);
    return "Novo contato: ${contato.nome}";
  }

  List listarContato() {
    // Cria a lista de contatos

    /*contatos = [
      Contato(
          id: 0,
          nome: "Lucas",
          sobrenome: "Nascimento",
          email: "nascimento@gmail.com",
          fone: "45 5577-8988",
          foto: "assets/img/1.jpg"),
      Contato(
          id: 1,
          nome: "Mathes",
          sobrenome: "Lops",
          email: "lopes@gmail.com",
          fone: "45 2485-8878",
          foto: "assets/img/2.jpg"),
      Contato(
          id: 2,
          nome: "Luiz",
          sobrenome: "Carlos",
          email: "carlinho@gmail.com",
          fone: "45 4585-1458",
          foto: "assets/img/3.jpg"),
    ];*/

    return contatos;
  }
}
