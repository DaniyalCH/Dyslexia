// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:game/widgets/drawer.dart';
import 'package:flutter_svg/svg.dart';

class PatientH extends StatefulWidget {
  const PatientH({Key? key}) : super(key: key);

  @override
  State<PatientH> createState() => _PatientH();
}


class _PatientH extends State<PatientH> {
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      //await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    } else {
      return null;
    }
  }
  Widget History_form(){
    return  Padding(
      padding: EdgeInsets.all(30.0),
      //SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),

      child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(20),
        child: SingleChildScrollView(
        child: Column(
          children:  [
            SizedBox(
              height: 20,
            ),
            Text(
              "Patient health record",
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Name",
                labelText: "Name",
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter Age",
                  labelText: "Age"),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter Class number",
                  labelText: "class Number"),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Have the patient been diagnosed with Dyslexia ?",
                  labelText: "Past Diagnosis"),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Do you think the patient is suffering from Dyslexia",
                  labelText: "Suspect Dyslexia"),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Is the patient reading as same level as the rest of the class",
                  labelText: "Class Result"),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Is any member of the family suffering from Dyslexia",
                  labelText: "Family History "),
            ),
            SizedBox(
              height: 50,
            ),
            Material(
              color: Color.fromARGB(255, 174, 145, 224),
              borderRadius:
              BorderRadius.circular(changeButton ? 50 : 8),
              child: InkWell(
                onTap: () => moveToHome(context),
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
                    'Submit',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            ),

          ],
        ),
        ),
      ),



    );

    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 225, 239),
        automaticallyImplyLeading: true,

        // ignore: prefer_const_constructors
        title: Text("AD&DY"),
      ),
      body: History_form(),
      drawer: MyDrawer(),
    );
  }
  }



