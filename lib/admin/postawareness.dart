import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'appdraweradmin.dart';
import 'admin_landing.dart';

class AwarenessPost extends StatefulWidget {
  const AwarenessPost({super.key});

  @override
  State<AwarenessPost> createState() => _AwarenessPoatState();
}

class _AwarenessPoatState extends State<AwarenessPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ADD TIP OF THE DAY',
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: AdminAppDrawer(),
      body: Center(
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(

            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [



                  SizedBox(
                    height: 15,
                  ),



                  SizedBox(height: 30,),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'TIP OF THE DAY',
                        style: TextStyle(
                            fontFamily: 'Caprasimo',
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 200),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(width: 1, color: Colors.black))),
                  ),

                  SizedBox(height: 50,),
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(),
                      color: Colors.greenAccent,
                    ),
                    child: Center(
                        child: Text(
                          'POST',
                          style: TextStyle(
                            fontFamily: ' Caprasimo',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
