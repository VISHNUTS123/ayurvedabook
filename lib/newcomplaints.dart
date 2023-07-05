import 'package:ayurvedabook/main.dart';
import 'package:ayurvedabook/profile.dart';
import 'package:flutter/material.dart';

class complaintnew extends StatefulWidget {
  const complaintnew({super.key});

  @override
  State<complaintnew> createState() => _complaintnewState();
}

class _complaintnewState extends State<complaintnew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'New Complaint',
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
      body: Container(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child:Padding(
            padding: const EdgeInsets.all(15),
            child: Align(
              child: Column(
                children: [
                  Align(alignment: Alignment.centerLeft, child: Text('Contact Number', style: TextStyle(fontFamily: 'Caprasimo', fontWeight: FontWeight.bold,fontSize: 18),)),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10),

                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: Colors.black))),
                  ),
                  SizedBox(height: 30,),
                  Align(alignment: Alignment.centerLeft, child: Text('Subject', style: TextStyle(fontFamily: 'Caprasimo', fontWeight: FontWeight.bold,fontSize: 18),)),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: Colors.black))),
                  ),
                   SizedBox(height: 30,),
                  Align(alignment: Alignment.centerLeft, child: Text('Your complaint', style: TextStyle(fontFamily: 'Caprasimo', fontWeight: FontWeight.bold,fontSize: 18),)),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 100),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: Colors.black))),
                  ),
                  SizedBox(height: 80,),
                  Container(

                    width: 230,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(),
                      color:Color(0xff764abc) ,

                    ),
                    child: Center(child: Text('POST', style: TextStyle(fontFamily: ' Caprasimo',fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white,
                    ),)),
                  ),





                ],
              ),
            ),
          ),
        ),
      ),);
  }
}
