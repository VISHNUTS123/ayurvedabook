import 'package:flutter/material.dart';
import 'package:ayurvedabook/login.dart';
import 'package:ayurvedabook/main.dart';
import 'package:ayurvedabook/appdrawerdoctor.dart';
import 'Booking_details.dart';
import 'patientdetails.dart';

class DoctorLanding extends StatefulWidget {
  const DoctorLanding({super.key});

  @override
  State<DoctorLanding> createState() => _DoctorLandingState();
}

class _DoctorLandingState extends State<DoctorLanding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'WELCOME BACK DOCTOR',
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: CustomDrawer(),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Colors.white, Colors.white],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Add navigation for Booking Details
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                AssetImage('images/viewbookingdetails.png'),
                                radius: 50,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                onPressed: () {Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Bookingdetails()));
                                  // Add navigation for Booking Details
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(width: 1, color: Colors.black),
                                  ),
                                  primary: Colors.greenAccent,
                                ),
                                child: Text(
                                  'Booking Details',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Add navigation for View Patient Details
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('images/list.jpg'),
                                radius: 50,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                onPressed: () {Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PatientDetails()));
                                  // Add navigation for View Patient Details
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(width: 1, color: Colors.black),
                                  ),
                                  primary: Colors.greenAccent,
                                ),
                                child: Text(
                                  'View Patient Details',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
    );
  }
}
