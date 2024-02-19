import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:url_connection/screens/bottomnavigationbar.dart';
import 'package:url_connection/screens/dashboard.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
   routetoHome();
    super.initState();
  }

  routetoHome(){
   Timer(const Duration(seconds: 3),
   ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder:( context)=>const Dashboard()),),
   );
  }
 @override
  void dispose() {
    log('App Started');
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
            child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.95,
      color: Colors.white,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/logo/fc3a69f9-e565-43cc-adc8-86ce1df5970e.png'),
         
        ],
      )),
    )));
  }
}