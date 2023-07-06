import 'package:ayurvedabook/main.dart';
import 'package:ayurvedabook/USER/doctorlist.dart';
import 'package:flutter/material.dart';
import 'package:ayurvedabook/USER/userlanding.dart';

class DoctorBioPge extends StatelessWidget {
  const DoctorBioPge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Dr. Vinay',
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
            CircleAvatar(backgroundImage: AssetImage('images/vinay.jpg'),radius: 20,),
            SizedBox(child: Text("""Dr. Vinay is an orthopedic doctor specializing in the diagnosis, treatment, and management of musculoskeletal conditions and injuries. With expertise in bone health, joint disorders, and related structures, Dr. Vinay provides comprehensive care to patients seeking orthopedic solutions.

Utilizing a combination of non-surgical and surgical approaches, Dr. Vinay tailors treatment plans to individual needs. Through thorough physical examinations, medical imaging, and diagnostic tests, he accurately assesses patients to determine the most effective course of action.

For non-invasive treatments, Dr. Vinay may prescribe medications, recommend physical therapy, or suggest assistive devices. In cases requiring surgical intervention, Dr. Vinay performs a range of procedures, from minimally invasive techniques to complex surgeries, all with the aim of alleviating pain, improving mobility, and restoring function.

With a patient-centered approach, Dr. Vinay prioritizes communication and ensures that his patients understand their conditions and treatment options. By providing compassionate care and personalized attention, Dr. Vinay helps his patients regain optimal musculoskeletal health, enhancing their overall well-being and quality of life."""),)


          ],
        ),
      ),
    );
  }
}
