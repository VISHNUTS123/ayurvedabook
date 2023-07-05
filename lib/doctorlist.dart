import 'package:ayurvedabook/profile.dart';
import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';

List<String> doctors = [
  'Dr.Vinay',
  'Dr. Akash S',
  'Dr. Amal ',
  'Dr. Ajay ',
  'Dr. Paul ',

];

List<String> specailization =[
  'Orthopedics'
  'Pediatrics'
  'Internal medicine'
  'Dermatology'
  'Psychiatry'
];



class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Our Doctors',
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 130,
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
                child: Text(
                  'Have a Nice Day',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
            ),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

                 Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

              ListView.builder(
                itemCount: doctors.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(doctors[index]),
                    subtitle: Text(specailization[index]),
                  );
                },
              )




            ],
          ),
        ),
      ),

    );
  }
}
