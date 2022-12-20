import 'package:app_contatos/View/home.dart';
import 'package:app_contatos/View/recursos/estilo.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Agenda de contatos",
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: estilo(),
    ));
