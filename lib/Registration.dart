import 'package:flutter/material.dart';

import 'main.dart';
import 'package:ayurvedabook/login.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
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
              Colors.green,
              Colors.lightGreenAccent,
              Colors.lightGreen,
              Colors.yellow,
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
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'REGISTER HERE !!',
                    style: TextStyle(
                         fontFamily: 'Caprasimo',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Create a New User ',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1.5,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20,),
                CircleAvatar(backgroundImage:AssetImage('images/user.jpg'),radius: 80,),
                SizedBox(
                  height: 50,
                ),
                Align(alignment: Alignment.centerLeft, child: Text('Email', style: TextStyle(fontFamily: 'Caprasimo', fontWeight: FontWeight.bold),)),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3, color: Colors.black))),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(alignment: Alignment.centerLeft, child: Text('Enter Password' ,style: TextStyle(fontFamily: 'Caprasimo', fontWeight: FontWeight.bold),)),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                     hintText: 'Enter a strong password',
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3, color: Colors.black))),
                  obscureText: true,
                ),
                SizedBox(height: 10,),
                Align(alignment: Alignment.centerLeft, child: Text('Confirm Password' ,style: TextStyle(fontFamily: 'Caprasimo', fontWeight: FontWeight.bold),)),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Confirm your Password',
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3, color: Colors.black))),
                  obscureText: true,
                ),
                SizedBox(
                  height: 30, // <-- SEE HERE
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(),
                      color: Colors.black,
                    ),
                    child: Center(child: Text('Register',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontFamily: ' Caprasimo',color: Colors.white),)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),



              ],
            ),
          ),
        ),
    ),
      ),
    );
  }
}
