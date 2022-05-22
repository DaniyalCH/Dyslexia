import 'package:flutter/material.dart';

class Question {
  final int id, answer;
  final String question;
  final CustomPainter shape;
  final List<String> options;
  Question({required this.id,required this.question, required this.answer,required this.options, required this.shape});
}



const List shape_questions = [
  {
    "id": 1,
    "question":
    "Select the correct shape",
    "shape": RPSCustomPainterQ1,
    "options": [RPSCustomPainterQ1opt1, RPSCustomPainterQ1, RPSCustomPainterQ1opt2, RPSCustomPainterQ1opt3],
    "answer_index": 1,
  },
  {
    "id": 1,
    "question":
    "Select the correct shape",
    "shape": RPSCustomPainterQ2,
    "options": [RPSCustomPainterQ2, RPSCustomPainterQ2opt1, RPSCustomPainterQ2opt3, RPSCustomPainterQ2opt2],
    "answer_index": 1,
  },

];

class RPSCustomPainterQ1 extends CustomPainter{

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
class RPSCustomPainterQ1opt1 extends CustomPainter{

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

class RPSCustomPainterQ1opt2 extends CustomPainter{

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
class RPSCustomPainterQ1opt3 extends CustomPainter{

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

class RPSCustomPainterQ2 extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path0 = Path();
    path0.moveTo(size.width*0.5002200,size.height*0.3983000);
    path0.lineTo(size.width*0.4000000,size.height*0.6000000);
    path0.lineTo(size.width*0.6000000,size.height*0.6000000);
    path0.lineTo(size.width*0.5002200,size.height*0.3983000);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
class RPSCustomPainterQ2opt1 extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path0 = Path();
    path0.moveTo(size.width*0.5500000,size.height*0.5000000);
    path0.lineTo(size.width*0.4500000,size.height*0.3000000);
    path0.lineTo(size.width*0.4500000,size.height*0.7000000);
    path0.lineTo(size.width*0.5500000,size.height*0.5000000);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
class RPSCustomPainterQ2opt2 extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path0 = Path();
    path0.moveTo(size.width*0.5000000,size.height*0.6000000);
    path0.lineTo(size.width*0.4000000,size.height*0.4000000);
    path0.lineTo(size.width*0.6003600,size.height*0.4000200);

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
class RPSCustomPainterQ2opt3 extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path0 = Path();
    path0.moveTo(size.width*0.4500000,size.height*0.6000000);
    path0.lineTo(size.width*0.4500000,size.height*0.4000000);
    path0.lineTo(size.width*0.5500000,size.height*0.6000000);

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}



