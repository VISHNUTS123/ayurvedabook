import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'appdraweradmin.dart';
import 'admin_landing.dart';

class MedicineAdd extends StatefulWidget {
  const MedicineAdd({super.key});

  @override
  State<MedicineAdd> createState() => _MedicineAddState();
}

class _MedicineAddState extends State<MedicineAdd> {
  @override
  Widget build(BuildContext context) {

    return Scaffold( appBar: AppBar(
    centerTitle: true,
    title: const Text(
    'MEDICINES AVAILABLE',
    ),
    backgroundColor: const Color(0xff764abc),
    ),
    drawer: AdminAppDrawer(),);

  }
}
