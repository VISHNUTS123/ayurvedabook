import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'book.dart';
import 'package:ayurvedabook/appdraweruser.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
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






    );
  }
}
