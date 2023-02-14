import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hospital_app/main.dart';
import './main.dart';
class WelcomeSplashScreen extends StatefulWidget {
  @override
  State<WelcomeSplashScreen> createState() => _WelcomeSplashScreenState();


}

class _WelcomeSplashScreenState extends State<WelcomeSplashScreen> {

  @override
  // this function is responsible for the splash screen effect and it lasts for 5 seconds
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyHomePage( title: "Holita",))));
  }
  @override
  Widget build(BuildContext context) {
    // this container contains the background color
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(253, 255, 255, 1),
              Color.fromRGBO(14, 2, 85, 1),
            ]),
      ),
      // the scaffold contains the polygon image and the text
      // the polygon image is positioned to the corner of the screen through the use of crossAxisAlignment
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Opacity(
                  opacity: 0.6,
                  child: Image.asset(
                    'assets/polygon.png',
                    width: 300,
                    height: 250,
                  )),
              SizedBox(
                height: 100,
              ),
              Center(
                  child: Column(
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Lato',
                            fontStyle: FontStyle.italic),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Your health, Our concern",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Lato',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  )),
            ],
          )),
    );
  }
}

