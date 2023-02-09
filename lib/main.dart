import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Text('Dadoos'),
          backgroundColor: Colors.teal.shade800,
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  const Dadoos({Key? key}) : super(key: key);

  @override
  _DadoosState createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  int numeroDadoEsquerda = 1;
  int numeroDadoDireita = 2;

  void alterarFaceDosDados() {
    setState(() {
      numeroDadoEsquerda = Random().nextInt(6) + 1;
      numeroDadoDireita = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  alterarFaceDosDados();
                },
                child: Image.asset('imagens/dado$numeroDadoEsquerda.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  alterarFaceDosDados();
                },
                child: Image.asset('imagens/dado$numeroDadoDireita.png')),
          ),
        ],
      ),
    );
  }
}
