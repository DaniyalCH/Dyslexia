// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:game/widgets/drawer.dart';

import '../../../utils/routes.dart';

class Q1 extends StatefulWidget {
  const Q1({Key? key}) : super(key: key);

  @override
  State<Q1> createState() => _Q1State();
}

class _Q1State extends State<Q1> {

  final FlutterTts flutterTts = FlutterTts();
  final List words = ["hello","cat","dog","water","children","father"];

  String question="Click on all the letters whose sound you heard";
  var changeButton = false;

  var tap_count=0;
  var word_1 ="Hello my name is Daniyal";
  //String word_1=(words.toList()..shuffle()).first;

  moveToQ2(BuildContext context) async {
        changeButton = true;
      await Navigator.pushNamed(context, MyRoutes.q2Route);
      setState(() {
        changeButton = false;
      });
  }
  int marks=0;
  Color btn_color = Colors.cyan;
  void check_ans(String k){
    if (word_1[0]==k){
      btn_color = Colors.green;
    }
    else{
      btn_color = Colors.red;
    }
  }

  Widget choiceButton(String k) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: MaterialButton(
        onPressed: () => check_ans(k),

        child: Text(
          k,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
          maxLines: 1,
        ),

        highlightColor: const Color.fromARGB(255, 22, 93, 152),
        color: btn_color,
        minWidth: 200.0,
        height: 45.0,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  speak(word)async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.setVolume(1.0);
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

                    choiceButton("a"),
                    choiceButton(word_1[0]),
                    choiceButton("r"),
                    choiceButton("q"),
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
