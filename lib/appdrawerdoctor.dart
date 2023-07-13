import 'package:flutter/material.dart';
import 'package:ayurvedabook/main.dart';
import 'package:ayurvedabook/login.dart';
import 'doctor/doctorlanding.dart';
import 'package:ayurvedabook/doctor/Doctorediting.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.greenAccent),
            accountName: Padding(
              padding: EdgeInsets.only(top: 8),
              child: GestureDetector(
                onTap: (){

                },
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>DoctorEditing()));
                  },
                  child: Text(
                    'USER',
                    style: TextStyle(
                        fontFamily: 'Caprasimo',
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            accountEmail: null,
            currentAccountPicture: Icon(
              Icons.person,
              size: 50,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoctorLanding(),
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
                  builder: (context) => WelcomePage(),
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
    );
  }
}