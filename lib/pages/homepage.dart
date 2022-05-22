// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game/pages/Dys_page/quizpage.dart';

//import '../utils/routes.dart';
import '../utils/routes.dart';
import '../widgets/drawer.dart';

class HomeP extends StatefulWidget {
  const HomeP({Key? key}) : super(key: key);

  @override
  State<HomeP> createState() => _HomePageState();
}

class _HomePageState extends State<HomeP> {
  @override
  void initState() {
    super.initState();
  }

  List<String> images = [
    "assets/images/DY.png",
    "assets/images/adhd.png",
    "assets/images/DC.png"
  ];
  Widget customcard(String langName, String images) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          Navigator.pushNamed(context, MyRoutes.ageRoute);

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
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "hello g how are you i am fine.click to play game",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
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
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 121, 225, 239),
        title: Text('AD&DY'),
        automaticallyImplyLeading: true,
      ),
      body: ListView(
        children: <Widget>[
          customcard("Dyslexia", images[0]),
          customcard("ADHD", images[1]),
          customcard("Discalculia", images[2]),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
