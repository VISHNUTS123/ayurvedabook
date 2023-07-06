import 'main.dart';
import 'package:flutter/material.dart';
import 'package:ayurvedabook/Registration.dart';
import 'package:ayurvedabook/profile.dart';
import 'doctor/doctorlanding.dart';

class login1 extends StatefulWidget {
  const login1({super.key});

  @override
  State<login1> createState() => _login1State();
}

class _login1State extends State<login1> {
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    final enteredPassword = _passwordController.text;
    if (enteredPassword == '123') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => profile1()),
      );
    } else if (enteredPassword == '456') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DoctorLanding()),
      );
    } else {
      // Password doesn't match, handle the error
    }
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

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
                      'LOGIN',
                      style: TextStyle(
                          fontFamily: 'Caprasimo',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.25),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Login to your account ',
                    style: TextStyle(
                      fontSize: 13,
                      letterSpacing: 1.5,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/login.jpg'),
                    radius: 40,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email',
                        style: TextStyle(
                            fontFamily: 'Caprasimo',
                            fontWeight: FontWeight.bold),
                      )),
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
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password',
                        style: TextStyle(
                            fontFamily: 'Caprasimo',
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.black))),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 30, // <-- SEE HERE
                  ),
                  GestureDetector(
                    onTap: () {
                   _login();
                    },
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(),
                        color: Colors.white,
                      ),
                      child: Center(
                          child: Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: ' Caprasimo',
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: Row(
                      children: [
                        Text('Dont have an account ? '),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Registration()));
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(
                                fontFamily: 'Caprasimo',
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
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
