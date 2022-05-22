import 'package:flutter/material.dart';
import 'package:game/widgets/drawer.dart';

class Discal extends StatefulWidget {
  const Discal({Key? key}) : super(key: key);

  @override
  State<Discal> createState() => _DiscalState();
}

class _DiscalState extends State<Discal> {
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
