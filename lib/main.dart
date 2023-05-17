import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frases do dia',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _random = Random();
  int posicao = 0;

  var _frases = [
    "Não se exija demais.",
    "A maior vitória e não desistir.",
    "Desistir não é uma opção.",
    "É em meio a dificuldade que se encontra a oportunidade.",
    "A fé move montanhas."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: _buildEstutura(),
    );
  }

  Container _buildEstutura() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/frases_dia.png',
              fit: BoxFit.contain,
            ),
            Text(
              _frases[posicao],
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  _gerarFrase();
                });
              }),
              child: Text('Nova frase'),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.green)),
            )
          ]),
    );
  }

  void _gerarFrase() {
    posicao = new Random().nextInt(_frases.length);
  }
}
