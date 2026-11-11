import 'package:flutter/material.dart';
import 'package:tutorial/exec/new.dart';

class MyWidget7 extends StatefulWidget {
  const new({super.key});

  @override
  State<MyWidget7> createState() => _MyWidget6State();
}

class _MyWidget6State extends State<MyWidget7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      Text("first page"),
      ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MyWidget6(),
      ),
    );
   Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => DetailScreen(
      userName: 'Aung Aung',
      age: 25,
    ),
  ),
);

  },
  child: const Text('Go to Second Screen'),
)
      

    ],),);
  }
}