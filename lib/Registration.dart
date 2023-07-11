import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'API/api.dart';
import 'login.dart';
class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  TextEditingController placeController = TextEditingController();
  TextEditingController postController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  bool isLoading =false ;
  void RegisterUser()async{
    setState(() {
      isLoading = true;
    });
    var data = {
      "patientusername": usernameController.text.trim(),
      "patientpassword": passwordController.text.trim(),
      "patientname": nameController.text.trim(),
      "patientage": ageController.text.trim(),
      "patientgender": genderController.text.trim(),
      "patientemail": emailController.text.trim(),
      "patientphone": phoneController.text.trim(),
      "patientaddress": addressController.text.trim(),
      "patientplace": placeController.text.trim(),
      "patientpost": postController.text.trim(),
      "patientpincode": pincodeController.text.trim(),
    };
    print("patient data${data}");
    var apiCalling = ApiCalling();
    var res = await apiCalling. PostRegister(data,'/api/patient_register');
    var body = json.decode(res.body);
    print('res${body}');
    if(body['success']==true)
    {
      Fluttertoast.showToast(
        msg: body['message'].toString(),
        backgroundColor: Colors.grey,
      );

      Navigator.push(context, MaterialPageRoute(builder: (context)=>login1()));

    }
    else
    {
      Fluttertoast.showToast(
        msg: body['message'].toString(),
        backgroundColor: Colors.grey,
      );

    }

  }



  ///
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
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/user.jpg'),
                    radius: 80,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'NAME',
                        style: TextStyle(
                            fontFamily: 'Caprasimo',
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.black))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'AGE',
                        style: TextStyle(
                            fontFamily: 'Caprasimo',
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller:ageController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.black))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'GENDER',
                        style: TextStyle(
                            fontFamily: 'Caprasimo',
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: genderController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.black))),
                  ),
                  SizedBox(
                    height: 10,
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
                    controller: emailController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.black))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'CONTACT NUMBER',
                        style: TextStyle(
                            fontFamily: 'Caprasimo',
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: phoneController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.black))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'ADDRESS',
                        style: TextStyle(
                            fontFamily: 'Caprasimo',
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: addressController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.black))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'PLACE',
                        style: TextStyle(
                            fontFamily: 'Caprasimo',
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: placeController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.black))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'POST OFFICE',
                        style: TextStyle(
                            fontFamily: 'Caprasimo',
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: postController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.black))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'PINCODE',
                        style: TextStyle(
                            fontFamily: 'Caprasimo',
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: pincodeController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.black))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'USERNAME',
                        style: TextStyle(
                            fontFamily: 'Caprasimo',
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.black))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Enter Password',
                        style: TextStyle(
                            fontFamily: 'Caprasimo',
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        hintText: 'Enter a strong password',
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.black))),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 30, // <-- SEE HERE
                  ),
                  GestureDetector(
                    onTap: () {
                      RegisterUser();
                    },
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(),
                        color: Colors.black,
                      ),
                      child: Center(
                          child: Text(
                        'Register',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: ' Caprasimo',
                            color: Colors.white),
                      )),
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
