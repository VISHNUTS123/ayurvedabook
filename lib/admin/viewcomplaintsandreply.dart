import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'appdraweradmin.dart';
import 'admin_landing.dart';

class ViewComplaints extends StatefulWidget {
  const ViewComplaints({super.key});

  @override
  State<ViewComplaints> createState() => _ViewComplaintsState();
}

class _ViewComplaintsState extends State<ViewComplaints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'Complaints And Replies',
      ),
      backgroundColor: const Color(0xff764abc),
    ),
      drawer: AdminAppDrawer(),);
  }
}
