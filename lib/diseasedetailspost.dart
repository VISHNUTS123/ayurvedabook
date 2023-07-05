import 'package:ayurvedabook/main.dart';
import 'package:ayurvedabook/profile.dart';
import 'package:flutter/material.dart';

class postdetails extends StatefulWidget {
  const postdetails({super.key});

  @override
  State<postdetails> createState() => _postdetailsState();
}

class _postdetailsState extends State<postdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'Let us Know',
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
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Name',
                      style: TextStyle(
                          fontFamily: 'Caprasimo',
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.black))),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Age',
                      style: TextStyle(
                          fontFamily: 'Caprasimo',
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.black))),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Weight',
                      style: TextStyle(
                          fontFamily: 'Caprasimo',
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.black))),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Height',
                      style: TextStyle(
                          fontFamily: 'Caprasimo',
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.black))),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Brief description about your symptoms',
                      style: TextStyle(
                          fontFamily: 'Caprasimo',
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 80),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.black))),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 150,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(),
                    color: Colors.greenAccent,
                  ),
                  child: Center(
                      child: Text(
                    'POST',
                    style: TextStyle(
                      fontFamily: ' Caprasimo',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
