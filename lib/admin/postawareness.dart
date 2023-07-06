import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'appdraweradmin.dart';
import 'appdraweradmin.dart';

class AwarenessPost extends StatefulWidget {
  const AwarenessPost({super.key});

  @override
  State<AwarenessPost> createState() => _AwarenessPoatState();
}

class _AwarenessPoatState extends State<AwarenessPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'AWARENESS',
      ),
      backgroundColor: const Color(0xff764abc),
    ),
      drawer: AdminAppDrawer(),);
  }
}
