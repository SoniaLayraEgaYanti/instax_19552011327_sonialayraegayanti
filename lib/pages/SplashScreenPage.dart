import 'dart:async';
import 'package:flutter/material.dart';
import 'package:instax_19552011327_sonia/pages/DashboardPage.dart';

class SplashScreenPage extends StatefulWidget{
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState  extends State<SplashScreenPage> {

  @override
  void initState(){
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async{
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute (builder: (_) {
          return DashboardPage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
          width: 200,
          height: 600,
          decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
          image: AssetImage("images/fujifilm.png"),
          )),
          ),
          Column(children: [
          Align(alignment: Alignment.bottomCenter,
          child: Text("Made by Sonia Layra Ega Yanti ❤️ | © 2021", style: TextStyle(fontSize: 15,color: Colors.black, fontWeight: FontWeight.bold),),
          ),
          ],),
        ],
      ),
    ),
 );
  }
}