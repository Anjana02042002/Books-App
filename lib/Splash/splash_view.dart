import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_album/Login/login.dart';
import 'package:my_album/main.dart';

void main()
{
  runApp(MaterialApp(
    debugShowMaterialGrid: false,
    home: SplashView(),
    debugShowCheckedModeBanner: false,
  ));
}

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 8), ()=>Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=>Loginpage())));
  }

  double opacityLevel = 1.0;
  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    _changeOpacity();
    return Scaffold(
      body: Stack(
        children:[ Container(
          child: Image.asset('assets/pexels-tima-miroshnichenko-6474345.jpg',fit: BoxFit.fill,
          height: 790,),
        ),
        Center(child: Image.asset('assets/attachment_136409459-removebg-preview (1).png',
        height: 400,width: 300,))
        
        ]
      ),
    );
  }
}
