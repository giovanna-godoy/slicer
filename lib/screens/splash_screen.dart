import 'dart:async';
import 'package:flutter/material.dart';
import 'package:slicer/screens/homepage_screen.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    Timer(
        Duration(seconds: 5),
            ()=>Navigator.push(
                context, MaterialPageRoute(
                builder: (BuildContext context) {
                    return HomePageScreen();
                    }
                    )
            )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(182, 95, 114, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/slicer-logo.png')
        ],),
    );
  }
}