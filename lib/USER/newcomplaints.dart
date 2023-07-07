import 'package:ayurvedabook/main.dart';
import 'package:ayurvedabook/USER/userlanding.dart';
import 'package:flutter/material.dart';
import 'package:ayurvedabook/appdraweruser.dart';

class complaintnew extends StatefulWidget {
  const complaintnew({super.key});

  @override
  State<complaintnew> createState() => _complaintnewState();
}

class _complaintnewState extends State<complaintnew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'New Complaint',
      ),
      backgroundColor: const Color(0xff764abc),
    ),
     drawer: UserDrawer(),
      body: Container(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child:Padding(
            padding: const EdgeInsets.all(15),
            child: Align(
              child: Column(
                children: [
                  Align(alignment: Alignment.centerLeft, child: Text('Contact Number', style: TextStyle(fontFamily: 'Caprasimo', fontWeight: FontWeight.bold,fontSize: 18),)),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10),

                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: Colors.black))),
                  ),
                  SizedBox(height: 30,),
                  Align(alignment: Alignment.centerLeft, child: Text('Subject', style: TextStyle(fontFamily: 'Caprasimo', fontWeight: FontWeight.bold,fontSize: 18),)),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: Colors.black))),
                  ),
                   SizedBox(height: 30,),
                  Align(alignment: Alignment.centerLeft, child: Text('Your complaint', style: TextStyle(fontFamily: 'Caprasimo', fontWeight: FontWeight.bold,fontSize: 18),)),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 100),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: Colors.black))),
                  ),
                  SizedBox(height: 80,),
                  Container(

                    width: 230,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(),
                      color:Color(0xff764abc) ,

                    ),
                    child: Center(child: Text('POST', style: TextStyle(fontFamily: ' Caprasimo',fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white,
                    ),)),
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
