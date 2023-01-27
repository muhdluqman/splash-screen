import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_screen/home.dart';


void main() {

  runApp(MaterialApp(
    home: SplashScreen(),
  ),);
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Home()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: new Color(0xffF5591F),
                gradient: LinearGradient(colors: [
                  // (new  Color(0xffF5591F)),
                  // new Color(0xffF2861E)],
                  (new  Color(0xff00bd9d2)), new Color(0xff6268e3)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
          ),
          Center(
            child: Container(
              child: Image.network("https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-goog/events/flutter_kk5rZ6f.png",height: 300,width: 300,),
            ),
          )
        ],
      ),
    );
  }
}