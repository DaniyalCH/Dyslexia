// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:game/pages/Dyslexia_Pages/Round_1/Q1_page.dart';
import 'package:game/pages/Dyslexia_Pages/Round_1/Q2_page.dart';
import 'package:game/pages/Dyslexia_Pages/Round_2/Q6_page.dart';
import 'package:game/pages/Patient_Health_Page/Patient_page.dart';
import 'package:game/pages/adhd.dart';
import 'package:game/pages/discal.dart';
import 'package:game/pages/Dyslexia_Pages/dyslexia.dart';
import 'package:game/pages/homepage.dart';
import 'package:game/pages/age.dart';

import 'package:game/pages/login_page.dart';
import 'package:game/utils/routes.dart';
import 'package:game/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Q6(),
        MyRoutes.ageRoute: (context) => Age(),
        MyRoutes.homeRoute: (context) => HomeP(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.dyslexiaRoute: (context) => Dyslexia(),
        MyRoutes.adhdRoute: (context) => Adhd(),
        MyRoutes.discalRoute: (context) => Discal(),
        MyRoutes.q1Route: (context) => Q1(),
        MyRoutes.patientH: (context) => PatientH(),
        MyRoutes.q6Route: (context) => Q6(),

      },
    );
  }
}
