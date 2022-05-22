import 'package:flutter/material.dart';
import 'package:game/widgets/drawer.dart';

class Adhd extends StatefulWidget {
  const Adhd({Key? key}) : super(key: key);

  @override
  State<Adhd> createState() => _AdhdState();
}

class _AdhdState extends State<Adhd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,

        // ignore: prefer_const_constructors
        title: Text("AD&DY"),
      ),
      drawer: MyDrawer(),
    );
  }
}
