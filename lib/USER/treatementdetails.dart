import 'package:ayurvedabook/USER/userlanding.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class tdetails extends StatefulWidget {
  const tdetails({super.key});

  @override
  State<tdetails> createState() => _tdetailsState();
}

class _tdetailsState extends State<tdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Treatment Details',
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Symptoms',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontFamily: 'Caprasimo',fontSize: 30),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        child: Text(
                            'Diarrhea, dehydration, vomiting, muscle cramps, rapid heart rate, low blood pressure, nausea.',style: TextStyle(fontSize: 22),),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Disease after diagnosis',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontFamily: 'Caprasimo',fontSize: 30),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                                'This symptoms indicates that you are affected by Cholera',style: TextStyle(fontSize: 22),)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Medications',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontFamily: 'Caprasimo',fontSize: 30,color: Colors.redAccent),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                                '1)Oral Rehydration Solution (ORS) \n2) Doxycycline : twice a day after food \n3) Azithromycin :Night - before food\n4)Ciprofloxacin: Morning - before food',style: TextStyle(fontSize: 22),)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
