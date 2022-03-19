import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  AssetImage one = const AssetImage("assets/one.png");
  AssetImage two = const AssetImage("assets/two.png");
  AssetImage three = const AssetImage("assets/three.png");
  AssetImage four = const AssetImage("assets/four.png");
  AssetImage five = const AssetImage("assets/five.png");
  AssetImage six = const AssetImage("assets/six.png");
  late AssetImage display;
  int num = 1;

  @override
  void initState() {
    super.initState();
    setState(() {
      display = one;
    });
  }

  void randomNumberGenerator() {
    num = Random().nextInt(6) + 1;
    switch (num) {
      case 1:
        display = one;
        break;
      case 2:
        display = two;
        break;
      case 3:
        display = three;
        break;
      case 4:
        display = four;
        break;
      case 5:
        display = five;
        break;
      case 6:
        display = six;
        break;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice App"),
      ),
      body: Container(
        color: Colors.blue,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Image(image: display),
            Text(
              num.toString(),
              style: const TextStyle(fontSize: 48),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: randomNumberGenerator,
        backgroundColor: Colors.green,
        splashColor: Colors.lightGreen,
        child: const Icon(Icons.add),
      ),
    );
  }
}
