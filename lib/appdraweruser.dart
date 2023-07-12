import 'main.dart';
import 'package:flutter/material.dart';
import 'USER/book.dart';
import 'package:ayurvedabook/USER/userlanding.dart';
import 'USER/complaints.dart';
import 'USER/doctorlist.dart';
import 'USER/doctors.dart';
import 'USER/newcomplaints.dart';
import 'USER/doctordetails.dart';
import 'package:ayurvedabook/USER/userdetails.dart';


class UserDrawer extends StatelessWidget {
  const UserDrawer({super.key});

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
                            builder: (context) => UserDetails()));
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
                  builder: (context) => profile1(),
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