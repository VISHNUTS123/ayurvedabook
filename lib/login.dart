import 'main.dart';
import 'package:flutter/material.dart';
import 'package:ayurvedabook/Registration.dart';
import 'package:ayurvedabook/USER/userlanding.dart';
import 'doctor/doctorlanding.dart';
import 'package:ayurvedabook/admin/admin_landing.dart';
import 'dart:convert';
import 'API/api.dart';
import 'package:http/http.dart' as http;
import 'package:ayurvedabook/USER/userlanding.dart';
import 'package:ayurvedabook/doctor/doctorlanding.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';


class login1 extends StatefulWidget {
  const login1({super.key});

  @override
  State<login1> createState() => _login1State();
}

class _login1State extends State<login1> {
  TextEditingController UserNameController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();


  late SharedPreferences localStorage;
  late int loginId ;
  String role = '';
  String status = '';
  bool Loading = false;

  final _formKey = GlobalKey<FormState>();

  LoginButton() async {
    setState(() {
      Loading = true;
    });
    var data = {
      'username': UserNameController.text.trim(), //username for email
      'password': PasswordController.text.trim()
    };
    var res = await ApiCalling().PostRegister(data,'/api/login_users');
    var body = json.decode(res.body);

    if (body['success'] == true) {
      print(body);

      role = body['data']['role'];
      status =  body['data']['l_status'];

      localStorage = await SharedPreferences.getInstance();
      localStorage.setString('role', role.toString());
      localStorage.setInt('login_id', body['data']['login_id']);
      localStorage.setInt('user_id',  body['data']['user_id']);

      print('login_id ${body['data']['login_id']}');
      print('user_id ${body['data']['user_id']}');
      const String user = 'patient'; // Replace 'user' with the actual user role value
      const String doctor = 'doctor'; // Replace 'user' with the actual user role value
      const String storedvalue = '1'; // Replace 'user' with the actual user role value

      if (user == role &&
          storedvalue == status) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => profile1()));
      } else if (doctor == role &&
          storedvalue == status) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DoctorLanding(),
        ));
      }else {
        Fluttertoast.showToast(
          msg: "Please wait for admin approval",
          backgroundColor: Colors.grey,
        );
      }


    } else {
      Fluttertoast.showToast(
        msg: body['message'].toString(),
        backgroundColor: Colors.grey,
      );
    }
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
                        'Username',
                        style: TextStyle(
                            fontFamily: 'Caprasimo',
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: UserNameController,
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
                    controller: PasswordController,
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
                     LoginButton();
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
