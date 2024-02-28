import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz/question.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:5),() { Navigator.push(context, MaterialPageRoute(builder: (context)=>que()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueGrey,),
      backgroundColor: Colors.white,
      body: Center(
          child: Image.asset(
        'image/leaf1.png',
        width: 100,
        height: 100,
      )
      ),
    );
  }
}
