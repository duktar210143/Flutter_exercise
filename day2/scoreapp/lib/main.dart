import 'package:flutter/material.dart';

void main() {
  runApp(scoreapp());
}

class scoreapp extends StatelessWidget {
  const scoreapp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      title: "Score App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({super.key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;

  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Test Score"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.reset_tv),
          onPressed: resetNumber,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text(
                "The Score is",
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                number.toString(),
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 85,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text(
                    "Increase",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: increaseNumber,
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  child: Text(
                    "Decrease",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: decreaseNumber,
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
