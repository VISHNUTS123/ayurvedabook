import 'package:flutter/material.dart';

import 'main.dart';
import 'package:ayurvedabook/login.dart';

class profile1 extends StatefulWidget {
  const profile1({super.key});

  @override
  State<profile1> createState() => _profile1State();
}

class _profile1State extends State<profile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,

              Colors.grey,
              Colors.blueGrey,

            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text('WELCOME BACK !',style: TextStyle(fontFamily: ' Caprasimo',fontSize: 30,fontWeight: FontWeight.bold, color: Colors.white),)),

                  ElevatedButton(onPressed: (){}, child: Text('LET US KNOW YOUR ISSUES',style: TextStyle(fontStyle: ),))













                ],
              ),
            ),
          ),
        ),
      ),


    );
  }
}
