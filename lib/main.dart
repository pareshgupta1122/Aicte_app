import 'dart:async';

import 'package:aicte_app/HomeScreen.dart';
import 'package:aicte_app/constraints.dart';
import 'package:aicte_app/signin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>HomePage()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor("#E5E5E5"),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(alignment: Alignment.center,
              child: Column(
                children: [
                  Image.asset('assets/logo.png'),
                  Text("WELCOME TO AICTE",style:GoogleFonts.
                  jacquesFrancois(color:Colors.black,fontSize: SizeConfig.deviceHeight*0.03,fontWeight: FontWeight.bold),),
                ],
              ),

          ),

        ],
      ),
    );
  }
}


