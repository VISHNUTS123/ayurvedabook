import 'package:flutter/material.dart';
import 'package:ayurvedabook/main.dart';
import 'package:ayurvedabook/login.dart';
import 'doctor/doctorlanding.dart';

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
              child: Text(
                'DOCTOR',
                style: TextStyle(
                  fontFamily: 'Caprasimo',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 24,
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