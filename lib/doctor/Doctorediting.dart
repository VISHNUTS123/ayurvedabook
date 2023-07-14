import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:ayurvedabook/API/api.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ayurvedabook/USER/MODEL/MODELDOCTOR.dart';
import 'package:ayurvedabook/appdrawerdoctor.dart';
import 'package:ayurvedabook/USER/book.dart';

class DoctorDtailsLogin extends StatefulWidget {
  final int id;
  const DoctorDtailsLogin({required this.id, Key? key}) : super(key: key);

  @override
  State<DoctorDtailsLogin> createState() => _DoctorDtailsLoginState();
}

class _DoctorDtailsLoginState extends State<DoctorDtailsLogin> {
  DoctorDetails? doctorDetails;
  ApiCalling url1 = ApiCalling();
  @override
  void initState() {
    super.initState();
    fetchDoctorDetails(widget.id); // Call the method to fetch doctor details
  }



  Future<void> fetchDoctorDetails(int doctorId) async {
    ReturnDetails details = ReturnDetails();
    DoctorDetails? fetchedDetails = await details.fetchDoctorDetails(doctorId); // Update to use doctorId parameter
    setState(() {
      doctorDetails = fetchedDetails;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'MY DETAILS',
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        backgroundImage: doctorDetails?.imageUrl != null
                            ? NetworkImage(url1.url + doctorDetails!.imageUrl.toString())
                            : null,

                        radius: 75,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        doctorDetails?.doctorname ?? '',
                        style: TextStyle(
                          fontFamily: 'Caprasimo',
                          fontSize: 27,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          doctorDetails?.doctorspecialization ?? '',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Experience',
                        style: TextStyle(
                          fontFamily: 'Caprasimo',
                          fontSize: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          doctorDetails?.doctorexperience.toString() ?? '',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Availability',
                        style: TextStyle(
                          fontFamily: 'Caprasimo',
                          fontSize: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          doctorDetails?.doctoravailabledays ?? '',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          doctorDetails?.availabltime ?? '',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ), Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontFamily: 'Caprasimo',
                          fontSize: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          doctorDetails?.doctoremail ?? '',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),


                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
