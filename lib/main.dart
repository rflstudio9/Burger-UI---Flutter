import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
        home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                  child: Image.asset("assets/burger.jpg",fit: BoxFit.cover,)),
              Column(
                children: [
                  SizedBox(height: 55,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("BURGER \nGOOD",style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),),
                    ],
                  ),
                  SizedBox(height: 350,),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black.withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 80,),
                              Container(
                                width: 220,
                                height: 5,
                                color: Color(0xffFFC77900).withOpacity(0.8),
                              ),
                              SizedBox(height: 40,),
                              Container(
                                width: 220,
                                height: 5,
                                color: Color(0xffFFC77900).withOpacity(0.8),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 37),
                            child: Text("Good Food \nTasty Food",
                                style: GoogleFonts.raleway(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 43),),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 70,left: 230),
                            child: Row(
                              children: [
                                Text("*",style: GoogleFonts.raleway(color: Colors.white,
                                fontSize: 120),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15,right: 15,top: 640, bottom: 80),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 0.4,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 725,left: 15),
                child: Row(
                  children: [
                    Text("Already have an account?",style: TextStyle(color: Colors.white),),
                    SizedBox(width: 10,),
                    Text("Sign In Here!",style: TextStyle(color: Colors.white),)
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
