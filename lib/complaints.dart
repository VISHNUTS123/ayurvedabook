import 'package:ayurvedabook/main.dart';
import 'package:ayurvedabook/profile.dart';
import 'package:ayurvedabook/newcomplaints.dart';
import 'package:flutter/material.dart';

class oldcomplaints extends StatefulWidget {
  const oldcomplaints({super.key});

  @override
  State<oldcomplaints> createState() => _oldcomplaintsState();
}

class _oldcomplaintsState extends State<oldcomplaints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Previous complaints and responses',
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child:ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: const Icon(Icons.list),
                      trailing: const Text(
                        "View response",
                        style: TextStyle(color: Colors.green, fontSize: 15),
                      ),
                      title: Text("List item ${index + 1}",style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text('Description'),
                    );
                  }),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding:EdgeInsets.only(bottom: 20,right: 20),
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          complaintnew()// Replace NextScreen with the screen you want to navigate to
                      ),
                    );
                  },
                  child: Icon(Icons.add),
                ),
              ),
            ),
          ],
        ),
      ),


    );
  }
}
