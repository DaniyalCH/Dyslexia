// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game/utils/routes.dart';

// ignore: use_key_in_widget_constructors
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const imageUrl = "assets/images/imageNez.png";
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 121, 239, 255),
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                margin: EdgeInsets.zero,
                accountEmail: Text("choudhydani0302@gmail.com"),
                accountName: Text("Daniyal CH"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              leading: Icon(CupertinoIcons.home, color: Colors.black),
              title: Text("Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.black),
              title: Text("Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.dyslexiaRoute);
              },
              leading:
                  Icon(CupertinoIcons.game_controller, color: Colors.black),
              title: Text("Dyslexia",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.adhdRoute);
              },
              leading:
                  Icon(CupertinoIcons.game_controller, color: Colors.black),
              title: Text("ADHD",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.discalRoute);
              },
              leading:
                  Icon(CupertinoIcons.game_controller, color: Colors.black),
              title: Text("Discalculia",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.black),
              title: Text("contact me",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
              leading: Icon(CupertinoIcons.person_fill, color: Colors.black),
              title: Text("Log out",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
