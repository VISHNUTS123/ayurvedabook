import 'package:ayurvedabook/appdrawerdoctor.dart';
import 'package:flutter/material.dart';
import 'dart:convert';// requires to convert the datas into json format
import 'package:ayurvedabook/API/api.dart';
import 'package:http/http.dart' as http;
import 'package:ayurvedabook/USER/userlanding.dart';
import 'package:ayurvedabook/doctor/doctorlanding.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ayurvedabook/doctor/doctorlanding.dart';
import 'package:ayurvedabook/USER/MODEL/MODELDOCTOR.dart';


// class DoctorEditing extends StatefulWidget {
//
//   const DoctorEditing({super.key});
//
//   @override
//   State<DoctorEditing> createState() => _DoctorEditingState();
//
// }
//
//
// class _DoctorEditingState extends State<DoctorEditing> {
//
//   late SharedPreferences data;
//   @override
//
//
//
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('DOCTOR DETAILS'),
//         backgroundColor: const Color(0xff764abc),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 Align(
//                   alignment: Alignment.topLeft,
//                   child: Text(
//                     'NAME',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                   ),
//                 ),
//                 TextField(
//
//                   decoration: InputDecoration(
//                       enabledBorder: OutlineInputBorder(
//                           borderSide:
//                           const BorderSide(width: 2, color: Colors.black12))),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//
//                 Align(
//                   alignment: Alignment.topLeft,
//                   child: Text(
//                     'QUALIFICATION',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                   ),
//                 ),
//                 TextField(
//
//                   decoration: InputDecoration(
//                       enabledBorder: OutlineInputBorder(
//                           borderSide:
//                           const BorderSide(width: 2, color: Colors.black12))),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Align(
//                   alignment: Alignment.topLeft,
//                   child: Text(
//                     'SPECIALIZATION',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                   ),
//                 ),
//                 TextField(
//
//                   decoration: InputDecoration(
//                       enabledBorder: OutlineInputBorder(
//                           borderSide:
//                           const BorderSide(width: 2, color: Colors.black12))),
//                 ),
//                 SizedBox(
//                   height: 10,),
//             Align(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 'EXPERIENCE',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//               ),
//             ),
//             TextField(
//
//               decoration: InputDecoration(
//                   enabledBorder: OutlineInputBorder(
//                       borderSide:
//                       const BorderSide(width: 2, color: Colors.black12))),
//             ),
//             SizedBox(
//               height: 10,),
//                 Align(
//                   alignment: Alignment.topLeft,
//                   child: Text(
//                     'GENDER',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                   ),
//                 ),
//                 TextField(
//
//                   decoration: InputDecoration(
//                       enabledBorder: OutlineInputBorder(
//                           borderSide:
//                           const BorderSide(width: 2, color: Colors.black12))),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Align(
//                   alignment: Alignment.topLeft,
//                   child: Text(
//                     'PHONE NUMBER',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                   ),
//                 ),
//                 TextField(
//
//                   decoration: InputDecoration(
//                       enabledBorder: OutlineInputBorder(
//                           borderSide:
//                           const BorderSide(width: 2, color: Colors.black12))),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Align(
//                   alignment: Alignment.topLeft,
//                   child: Text(
//                     'Email',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                   ),
//                 ),
//                 TextField(
//
//                   decoration: InputDecoration(
//                       enabledBorder: OutlineInputBorder(
//                           borderSide:
//                           const BorderSide(width: 2, color: Colors.black12))),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Align(
//                   alignment: Alignment.topLeft,
//                   child: Text(
//                     'AVAILABLE DAYS',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                   ),
//                 ),
//                 TextField(
//
//                   decoration: InputDecoration(
//                       enabledBorder: OutlineInputBorder(
//                           borderSide:
//                           const BorderSide(width: 2, color: Colors.black12))),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Align(
//                   alignment: Alignment.topLeft,
//                   child: Text(
//                     'AVAILABLE TIME',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                   ),
//                 ),
//                 TextField(
//
//                   decoration: InputDecoration(
//                       enabledBorder: OutlineInputBorder(
//                           borderSide:
//                           const BorderSide(width: 2, color: Colors.black12))),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Align(
//                   alignment: Alignment.topLeft,
//                   child: Text(
//                     'PROFILE PHOTO URL',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                   ),
//                 ),
//                 TextField(
//
//                   decoration: InputDecoration(
//                       enabledBorder: OutlineInputBorder(
//                           borderSide:
//                           const BorderSide(width: 2, color: Colors.black12))),
//                 ),
//                 SizedBox(
//                   height: 40,
//                 ),
//
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
class DoctorDetailLogin extends StatefulWidget {
  final int id;

  const DoctorDetailLogin({required this.id, Key? key}) : super(key: key);

  @override
  _DoctorDetailLoginState createState() => _DoctorDetailLoginState();
}

class _DoctorDetailLoginState extends State<DoctorDetailLogin> {
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
          'KNOW MORE ABOUT THE DOCTOR',
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

