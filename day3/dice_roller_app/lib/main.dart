import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.purple),
    debugShowCheckedModeBanner: false,
    title: "Dice app",
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dicenum = 1;
  void changeDice() {
    setState(() {
      dicenum = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice Roller"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
              child: Image.asset(
            "assets/dice.$dicenum.png",
            height: 250,
            width: 250,
          )),
          MaterialButton(
            color: Colors.blue,
            onPressed: changeDice,
            child: const Text(
              "ROLL",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }
}
