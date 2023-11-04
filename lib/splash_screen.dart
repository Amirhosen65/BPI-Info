import 'dart:async';

import 'package:flutter/material.dart';
import 'package:teacherslist/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }


  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => HomeScreen()
      )
    );
  }

  initScreen(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("images/campus_images/splash_ogo.png"),
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            Text(
              "BPI Info",
              style: TextStyle(
                  fontSize: 30.0,

              ),
            ),
            SizedBox(height: 15,),
            Text(
              "Bogura Polytechnic Institute",
              style: TextStyle(
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              strokeWidth: 3,
            )
          ],
        ),
      ),
    );
  }
}