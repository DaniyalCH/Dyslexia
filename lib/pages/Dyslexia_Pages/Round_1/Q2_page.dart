// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:game/widgets/drawer.dart';

import '../../../utils/routes.dart';

class Q2 extends StatefulWidget {
  const Q2({Key? key}) : super(key: key);

  @override
  State<Q2> createState() => _Q2State();
}

class _Q2State extends State<Q2> {

  final FlutterTts flutterTts = FlutterTts();
  final List words = ["hello","cat","dog","water","children","father"];

  String question="What did you hear";
  var changeButton = false;
  var ans1="";

  var word_1="";

  final _formKey = GlobalKey<FormState>();
  moveToQ2(BuildContext context) async {

    changeButton = true;

    await Navigator.pushNamed(context, MyRoutes.q2Route);
    setState(() {
      changeButton = false;
    });

  }
  speak(word)async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak(word);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.cyan,

        title: Text("AD&DY"),
      ),

      body: Padding(
          padding: const EdgeInsets.all(14.0),
          // ignore: prefer_const_literals_to_create_immutables
          child: SingleChildScrollView(
              child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child:Text(
                        "Q1: $question",
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      onTap: () {
                        word_1 = (words.toList()..shuffle()).first;
                        speak(word_1);
                        print(word_1);
                      },
                      leading: const Icon(CupertinoIcons.play_circle , color: Colors.black),
                      title: const Text("Play",
                          textScaleFactor: 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          )),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(

                      decoration: const InputDecoration(
                        hintText: "Enter Answer",
                        labelText: "Answer",

                      ),

                      onChanged: (value) {
                        ans1 = value;
                        setState(() {});
                      },

                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Material(
                      color: Color.fromARGB(255, 174, 145, 224),
                      borderRadius:
                      BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        onTap: () => moveToQ2(context),

                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(
                            Icons.done,
                            color: Colors.black,
                          )
                              : Text(
                            'Next',
                            style: TextStyle(                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ]
              )
          )
      ),
      drawer: MyDrawer(),
    );
  }


}
