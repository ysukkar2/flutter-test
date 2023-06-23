import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test/homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(
      const Duration(seconds: 3),
      ()=>Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context)=>const HomeScreen())
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,

            colors: [Color(0xFFFF800B),Color(0xFFCE1010),]
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/fluttericon.png",
                  height: 300.0,
                  width: 300.0,

                ),

                 const CircularProgressIndicator( 
              valueColor:  AlwaysStoppedAnimation<Color>(Colors.orange),
                 ),
              ],
            )
          ]
                )
      )
    );


                
  }
}