import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'admin_landing.dart';
import 'appdraweradmin.dart';

class AddDoctor extends StatefulWidget {
  const AddDoctor({super.key});

  @override
  State<AddDoctor> createState() => _AddDoctorState();
}

class _AddDoctorState extends State<AddDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'DOCTORS',
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: AdminAppDrawer(),
    );
  }
}
