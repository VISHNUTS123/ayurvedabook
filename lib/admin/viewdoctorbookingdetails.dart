import 'package:flutter/material.dart';
import 'appdraweradmin.dart';
import 'admin_landing.dart';

class DoctorBooking extends StatefulWidget {
  const DoctorBooking({Key? key}) : super(key: key);

  @override
  State<DoctorBooking> createState() => _DoctorBookingState();
}

class _DoctorBookingState extends State<DoctorBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BOOKINGS'),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: AdminAppDrawer(),
      body: Container(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: const Icon(Icons.bookmark_add_outlined),
                    trailing: Column(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Accept",
                              style: TextStyle(color: Colors.green, fontSize: 15),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Reject",
                              style: TextStyle(color: Colors.red, fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                    title: Text(
                      "Doctor ${index + 1}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Time'),
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
