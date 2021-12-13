import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = "My favourite fruit is";
  String fruit = "unknown";

  callback(varFruit) {
    setState(() {
      fruit = varFruit as String;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(title + fruit),
        ),
        body: Center(
          child: Column(
            children: [
              FruitButton(fruit: "apples", callback: callback),
              FruitButton(fruit: "Oranges", callback: callback),
              FruitButton(
                fruit: "pears",
                callback: callback,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FruitButton extends StatelessWidget {
  const FruitButton({required this.fruit, required this.callback});
  final String fruit;
  final Function callback;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          callback(fruit);
        },
        child: const Text("Fruit"));
  }
}
