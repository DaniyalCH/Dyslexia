import 'package:flutter/material.dart';
import 'package:game/widgets/drawer.dart';

class Dyslexia extends StatefulWidget {
  const Dyslexia({Key? key}) : super(key: key);

  @override
  State<Dyslexia> createState() => _DyslexiaState();
}

class _DyslexiaState extends State<Dyslexia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.cyan,
        // ignore: prefer_const_constructors
        title: Text("AD&DY"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(14.0),
          // ignore: prefer_const_literals_to_create_immutables
          child: SingleChildScrollView(child: Column(children: []))),
      drawer: MyDrawer(),
    );
  }
}
