import 'package:ayurvedabook/book.dart';
import 'package:ayurvedabook/login.dart';
import 'package:ayurvedabook/treatementdetails.dart';
import 'package:flutter/material.dart';
import 'package:ayurvedabook/main.dart';
import 'package:ayurvedabook/diseasedetailspost.dart';
import 'package:ayurvedabook/complaints.dart';
import 'package:ayurvedabook/doctorlist.dart';

class profile1 extends StatefulWidget {
  const profile1({super.key});

  @override
  State<profile1> createState() => _profile1State();
}

class _profile1State extends State<profile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'WELCOME',
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(decoration: BoxDecoration(color: Colors.greenAccent),accountName: Padding(padding: EdgeInsets.only(top: 8),
                child: Text('Vishnu',style: TextStyle(fontFamily: 'Caprasimo',fontWeight: FontWeight.bold,color: Colors.black,fontSize: 24),)),accountEmail: null, currentAccountPicture: Icon(
              Icons.person,
              size: 50,
            ),),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        profile1(), // Replace NextScreen with the screen you want to navigate to
                  ),
                );
              },
              child: ListTile(
                leading: Icon(Icons.home),
                title: const Text('Home'),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WelcomePage() // Replace NextScreen with the screen you want to navigate to
                  ),
                );
              },
              child: ListTile(
                leading: Icon(Icons.logout),
                title: const Text('Logout'),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
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
                              backgroundImage: AssetImage('images/aware.jpg'),
                              radius: 50,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(width: 1, color: Colors.black),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent), // Set the background color
                              ),
                              child: Text('Awareness',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            )

                          ],
                        ),
                      ),
                      Container(
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
                                      builder: (context) => ListPage()));},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(width: 1, color: Colors.black),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent), // Set the background color
                              ),
                              child: Text('Doctors List',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
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
                              onPressed: () {Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => tdetails()));},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(width: 1, color: Colors.black),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent), // Set the background color
                              ),
                              child: Text('View Treatment \n         Details',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            )

                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/post.png'),
                              radius: 50,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () { Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => postdetails()));},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(width: 1, color: Colors.black),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent), // Set the background color
                              ),
                              child: Text('        Post your \n   Disease Details',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            )

                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/booking.png'),
                              radius: 50,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Booking()));},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(width: 1, color: Colors.black),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent), // Set the background color
                              ),
                              child: Text('Booking',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
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
                                  AssetImage('images/complaint.jpg'),
                              radius: 50,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () { Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>oldcomplaints()));},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(width: 1, color: Colors.black),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent), // Set the background color
                              ),
                              child: Text('Complaints',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
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
      ),
    );
  }
}
