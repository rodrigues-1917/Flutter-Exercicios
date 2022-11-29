import 'package:flutter/material.dart';

class Validacao extends StatefulWidget {
  @override
  State createState() => ValidacaoState();
}

class ValidacaoState extends State<Validacao> {
  final chave = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Form(
          key: chave,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Por favor preencha o campo";
                  }
                  return null;
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: ElevatedButton(
                  child: Text('Enviar'),
                  onPressed: () {
                    // Verifica se o retorno do form eh valido
                    if (chave.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Processando o pedido")));
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
