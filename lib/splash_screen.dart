import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:question_and_answer/view_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => ViewScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF37474F),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: LoadingAnimationWidget.discreteCircle(
                color: Colors.white,
                size: 45,
                secondRingColor: Colors.red,
                thirdRingColor: Colors.green),
          ),
          SizedBox(
            height: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flutter ',
                style: TextStyle(fontSize: 29, color: Colors.white),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Q',
                style: TextStyle(fontSize: 29, color: Colors.red),
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                '/',
                style: TextStyle(fontSize: 29, color: Colors.white),
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                'A',
                style: TextStyle(fontSize: 29, color: Colors.green),
              )
            ],
          ),
          Text(
            'Version 1.1.0',
            style: TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      ),
    );
  }
}
