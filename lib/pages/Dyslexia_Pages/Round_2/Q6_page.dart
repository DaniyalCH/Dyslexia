// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:game/widgets/drawer.dart';

import '../../../utils/routes.dart';

class Q6 extends StatefulWidget {
  const Q6({Key? key}) : super(key: key);

  @override
  State<Q6> createState() => _Q6State();
}

class _Q6State extends State<Q6> {

  final FlutterTts flutterTts = FlutterTts();
  final List words = ["hello","cat","dog","water","children","father"];

  String question="Match the shape that you can see hear with the given options";
  var changeButton = false;
  var ans1="";
  var tap_count=0;

  var word_1="";

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
    await flutterTts.setVolume(1.0);
    await flutterTts.speak(word);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

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
                        "Q6: $question",
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomPaint(
                      size: Size(size.width, 80),
                      painter : RPSCustomPainter(),
                    ),










                    const SizedBox(
                      height: 20,
                    ),

                    Material(
                      color: Colors.cyan,
                      borderRadius:
                      BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        onTap: () {
                          color: Color.fromARGB(255, 174, 145, 224);
                        },
                        child:CustomPaint(
                          size: Size(size.width, 80),
                          painter : RPSCustomPainter(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Material(
                      color: Colors.cyan,
                      borderRadius:
                      BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        onTap: () {
                          color: Color.fromARGB(255, 174, 145, 224);
                        },
                        child:CustomPaint(
                          size: Size(size.width, 80),
                          painter : RPSCustomPainter2(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),


                    Material(
                      color: Colors.cyan,
                      borderRadius:
                      BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        onTap: () {
                          color: Color.fromARGB(255, 174, 145, 224);
                        },
                        child:CustomPaint(
                          size: Size(size.width, 80),
                          painter : RPSCustomPainter3(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),


                    Material(
                      color: Colors.cyan,
                      borderRadius:
                      BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        onTap: () {
                          color: Color.fromARGB(255, 174, 145, 224);
                        },
                        child:CustomPaint(
                          size: Size(size.width, 80),
                          painter : RPSCustomPainter4(),
                        ),
                      ),
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
                            style: TextStyle(
                                color: Colors.black,
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
class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path0 = Path();
    path0.moveTo(size.width*0.3737500,size.height*0.4500000);
    path0.lineTo(size.width*0.4625000,size.height*0.4500000);
    path0.lineTo(size.width*0.4625000,size.height*0.3596000);
    path0.lineTo(size.width*0.5125000,size.height*0.5000000);
    path0.lineTo(size.width*0.4628250,size.height*0.6406500);
    path0.lineTo(size.width*0.4631000,size.height*0.5487000);
    path0.lineTo(size.width*0.3737500,size.height*0.5500000);
    path0.lineTo(size.width*0.3737500,size.height*0.4500000);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
class RPSCustomPainter2 extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path0 = Path();
    path0.moveTo(size.width*0.4507375,size.height*0.7515500);
    path0.lineTo(size.width*0.4508125,size.height*0.4483500);
    path0.lineTo(size.width*0.4743875,size.height*0.4494000);
    path0.lineTo(size.width*0.4377875,size.height*0.2641500);
    path0.lineTo(size.width*0.4012125,size.height*0.4486500);
    path0.lineTo(size.width*0.4248875,size.height*0.4493000);
    path0.lineTo(size.width*0.4246625,size.height*0.7532000);
    path0.lineTo(size.width*0.4507375,size.height*0.7515500);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class RPSCustomPainter3 extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path0 = Path();
    path0.moveTo(size.width*0.5130375,size.height*0.4486000);
    path0.lineTo(size.width*0.4243750,size.height*0.4465000);
    path0.lineTo(size.width*0.4243250,size.height*0.3563000);
    path0.lineTo(size.width*0.3734500,size.height*0.5000000);
    path0.lineTo(size.width*0.4249625,size.height*0.6308000);
    path0.lineTo(size.width*0.4250125,size.height*0.5487000);
    path0.lineTo(size.width*0.5128375,size.height*0.5479000);
    path0.lineTo(size.width*0.5130375,size.height*0.4486000);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
class RPSCustomPainter4 extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path0 = Path();
    path0.moveTo(size.width*0.4505375,size.height*0.2497500);
    path0.lineTo(size.width*0.4505750,size.height*0.5500500);
    path0.lineTo(size.width*0.4719250,size.height*0.5497000);
    path0.lineTo(size.width*0.4377875,size.height*0.7522000);
    path0.lineTo(size.width*0.4018625,size.height*0.5494000);
    path0.lineTo(size.width*0.4240500,size.height*0.5496000);
    path0.lineTo(size.width*0.4247375,size.height*0.2494000);
    path0.lineTo(size.width*0.4505375,size.height*0.2497500);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}






