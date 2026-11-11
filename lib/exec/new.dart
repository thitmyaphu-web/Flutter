import 'package:flutter/material.dart';
import 'package:tutorial/exec/old.dart';

class MyWidget6 extends StatefulWidget {
  const new({super.key});

  @override
  State<MyWidget6> createState() => _MyWidget6State();
}

class _MyWidget6State extends State<MyWidget6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      Text("first pa"),
      ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MyWidget7(),
      ),
    );
  },
  child: const Text('Go to Second Screen'),
)
      

    ],),);
  }
}
class DetailScreen extends StatelessWidget {
  final String userName;
  final int age;

  const DetailScreen({
    super.key, 
    required this.userName, 
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Text('User: $userName, Age: $age');
  }
}