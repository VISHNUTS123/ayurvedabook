import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'adddoctordetails.dart';
import 'addmedicine.dart';
import 'admin_landing.dart';
import 'postawareness.dart';
import 'viewcomplaintsandreply.dart';
import 'viewdoctorbookingdetails.dart';
import 'viewpatientdetailslist.dart';
import 'viewtreatmentdetails.dart';

class AdminAppDrawer extends StatefulWidget {
  const AdminAppDrawer({super.key});

  @override
  State<AdminAppDrawer> createState() => _AdminAppDrawerState();
}

class _AdminAppDrawerState extends State<AdminAppDrawer> {
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
                'ADMIN',
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
                  builder: (context) =>AdminLanding(),
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
