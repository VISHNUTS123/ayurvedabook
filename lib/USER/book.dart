import 'package:ayurvedabook/main.dart';
import 'package:ayurvedabook/USER/userlanding.dart';
import 'package:ayurvedabook/USER/doctorlist.dart';
import 'package:flutter/material.dart';
import 'package:ayurvedabook/appdraweruser.dart';

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
                      trailing: const Text(
                        "BOOK",
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
