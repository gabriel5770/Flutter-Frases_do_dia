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
        body: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 100)),
            Container(
              child: Center(
                  child: Image.asset(
                'images/frases_dia.png',
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
              )),
            ),
            Padding(padding: EdgeInsets.only(top: 150)),
            Column(
              children: [
                Text(
                  "Batatinha quando nasce , se aparrama pelo chão",
                  style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300),
                ),
              ],
            )
          ],
        ));
  }
}
