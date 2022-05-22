// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:game/pages/Dys_page/quizpage.dart';
import 'package:game/widgets/drawer.dart';

class Age extends StatefulWidget {
  const Age({Key? key}) : super(key: key);

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  List<String> images = [
    "assets/images/kid.png",
    "assets/images/teen.png",
    "assets/images/adult.png"
  ];
  Widget ageCard(langName, images) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {

         },
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          alignment: Alignment.center,
          child: Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Material(
                    // ignore: sized_box_for_whitespace
                    child: Container(
                      height: 200,
                      width: 300,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(images),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langName,
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 121, 225, 239),
        title: Text('AD&DY '),
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/ageg.png",
            ),
            Center(
              child: Text(
                "Select your Age bracket",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            ageCard("Age 1-10", images[0]),
            ageCard("Age 11-20", images[1]),
            ageCard("Age +21", images[1]),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
