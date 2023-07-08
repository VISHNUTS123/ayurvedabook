import 'package:ayurvedabook/main.dart';
import 'package:ayurvedabook/USER/userlanding.dart';
import 'package:ayurvedabook/USER/doctorlist.dart';
import 'package:flutter/material.dart';
import 'package:ayurvedabook/appdraweruser.dart';
import 'bookappointment.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BOOK AN APPOINTMENT',
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: UserDrawer(),
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
                      trailing: TextButton(onPressed: (){  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Appointment()));}, child:Text('BOOK')),
                      title: Text(doctors[index]),
                      subtitle: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(specailization[index]),
                            Text('Available time'),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
