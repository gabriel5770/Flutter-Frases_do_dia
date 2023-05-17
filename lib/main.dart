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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          padding: EdgeInsets.all(40),
          decoration:
              BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('images/frases_dia.png'),
                Text('Batatinha quando nasce , se esparrama pelo chão'),
                ElevatedButton(
                  onPressed: (() {}),
                  child: Text('Nova frase'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.green)),
                )
              ]),
        ));
  }
}
