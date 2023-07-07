import 'package:ayurvedabook/admin/viewdoctorbookingdetails.dart';
import 'package:ayurvedabook/doctor/Booking_details.dart';
import 'package:ayurvedabook/doctor/doctorlanding.dart';
import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'appdraweradmin.dart';
import 'adddoctordetails.dart';
import 'addmedicine.dart';
import 'postawareness.dart';
import 'viewcomplaintsandreply.dart';
import 'viewcomplaintsandreply.dart';
import 'viewtreatmentdetails.dart';
import 'viewpatientdetailslist.dart';

class AdminLanding extends StatefulWidget {
  const AdminLanding({super.key});

  @override
  State<AdminLanding> createState() => _AdminLandingState();
}

class _AdminLandingState extends State<AdminLanding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: const Text(
        'WELCOME ADMIN',
    ),
    backgroundColor: const Color(0xff764abc),
        ),
      drawer: AdminAppDrawer(),

        body : Center(
          child: SingleChildScrollView(
            child: Column(
              children: [

                Padding(
                  padding: EdgeInsets.all(10),
                  child: GridView(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/addmedi.jpg'),
                              radius: 50,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MedicineAdd()));
                              },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(width: 1, color: Colors.black),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent), // Set the background color
                              ),
                              child: Text('Add Medicine',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            )

                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/details.jpg'),
                              radius: 50,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () { Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>PatientsList()));},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(width: 1, color: Colors.black),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent), // Set the background color
                              ),
                              child: Text('View Patient Details',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            )

                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/viewcomplaints.jpg'),
                              radius: 50,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ViewComplaints()));
                              },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(width: 1, color: Colors.black),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent), // Set the background color
                              ),
                              child: Text('View Complaints\n      and Reply',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            )

                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/postaware.png'),
                              radius: 50,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AwarenessPost())); },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(width: 1, color: Colors.black),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent), // Set the background color
                              ),
                              child: Text('Post Awareness',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            )

                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/adddoctor.png'),
                              radius: 50,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddDoctor()));},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(width: 1, color: Colors.black),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent), // Set the background color
                              ),
                              child: Text('Add Doctor Details',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            )

                          ],
                        ),
                      ),
                      Container(
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
                              onPressed: () { Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DoctorBooking()));},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(width: 1, color: Colors.black),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent), // Set the background color
                              ),
                              child: Text('View Doctor \n Booking Details',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            )

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

    );
  }
}
