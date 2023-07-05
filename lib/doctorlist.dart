import 'package:ayurvedabook/profile.dart';
import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'package:ayurvedabook/doctorlist.dart';

List<String> doctors = [
  'Dr.Vinay',
  'Dr. Akash S',
  'Dr. Amal ',
  'Dr. Ajay ',
  'Dr. Paul ',




];

List<String> specailization =[
  'Orthopedics',
  'Pediatrics',
  'Internal medicine',
  'Dermatology',
  'Psychiatry',

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

              Expanded(
                child: ListView.builder(
                  itemCount: doctors.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: ListTile(
                        leading: const Icon(Icons.health_and_safety_outlined),
                        trailing: const Text(
                          "Details",
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),
                        title: Text(doctors[index]),
                        subtitle: Text(specailization[index]),
                      ),
                    );
                  },
                ),
              )




            ],
          ),
        ),


    );
  }
}
