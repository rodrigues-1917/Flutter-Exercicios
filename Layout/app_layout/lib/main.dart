import 'package:app_layout/Layout.dart';
import 'package:flutter/material.dart';

// Run app chamara a classe MeuLayout
void main() {
  runApp(MeuLayout());
}


// A classe MeuLayout extendera um widget de estado imutavel (stateles)
// e retornara a estrutura do app
// Dentro dessa estrutura chamaremos o layout criado em Layout.dart
class MeuLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layout Basico",
      home: Scaffold(
        body: Layout()
      ),
    );
  }

}