import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gutcanbehappy_project/loginscreens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
      super.initState();
    Timer(const Duration(milliseconds: 4000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         decoration: BoxDecoration(
           gradient: LinearGradient(colors: [Colors.yellow ,Colors.redAccent]
           , end: Alignment.bottomCenter,
           begin: Alignment.topCenter) 
        ),
         child: Center(
          child: Image.asset('assets/icons/logosp.png', height:100 , width: 100, fit: BoxFit.fill),
        ),
      ),           
    );
  }
}
