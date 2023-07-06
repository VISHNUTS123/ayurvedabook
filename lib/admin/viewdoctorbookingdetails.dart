import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'appdraweradmin.dart';
import 'admin_landing.dart';

class DoctorBooking extends StatefulWidget {
  const DoctorBooking({super.key});

  @override
  State<DoctorBooking> createState() => _DoctorBookingState();
}

class _DoctorBookingState extends State<DoctorBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
    centerTitle: true,
    title: const Text(
    'BOOKINGS',
    ),
    backgroundColor: const Color(0xff764abc),
    ),
    drawer: AdminAppDrawer(),);
  }
}


