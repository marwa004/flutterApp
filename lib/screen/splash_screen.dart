
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inoculation_app/authentication/sign_in.dart';
//there is a convectional naming in dart snake case 
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5),(){
     Navigator.of(context).push(
       MaterialPageRoute(
                      builder:(context)=>const Login(),
                      ),
     );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
     // body:Center(child:Image.asset("shop.jpg")), 
     body:ListView(children : [
      
     ],)
    );
  }
}