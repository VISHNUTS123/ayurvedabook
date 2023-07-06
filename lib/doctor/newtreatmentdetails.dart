import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'PostTreatmentDetails.dart';
import 'package:ayurvedabook/appdrawerdoctor.dart';
 class NewDetails extends StatefulWidget {
   const NewDetails({super.key});

   @override
   State<NewDetails> createState() => _NewDetailsState();
 }

 class _NewDetailsState extends State<NewDetails> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(body: Center(
       child: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(15),
           child: Column(
             children: [
               Align(
                   alignment: Alignment.centerLeft,
                   child: Text(
                     'Name',
                     style: TextStyle(
                         fontFamily: 'Caprasimo',
                         fontWeight: FontWeight.bold,
                         fontSize: 18),
                   )),
               SizedBox(
                 height: 10,
               ),
               TextField(
                 decoration: InputDecoration(
                     contentPadding: EdgeInsets.symmetric(vertical: 10),
                     enabledBorder: OutlineInputBorder(
                         borderSide:
                         const BorderSide(width: 1, color: Colors.black))),
               ),
               SizedBox(
                 height: 20,
               ),
               Align(
                   alignment: Alignment.centerLeft,
                   child: Text(
                     'Age',
                     style: TextStyle(
                         fontFamily: 'Caprasimo',
                         fontWeight: FontWeight.bold,
                         fontSize: 18),
                   )),
               SizedBox(
                 height: 10,
               ),
               TextField(
                 decoration: InputDecoration(
                     contentPadding: EdgeInsets.symmetric(vertical: 10),
                     enabledBorder: OutlineInputBorder(
                         borderSide:
                         const BorderSide(width: 1, color: Colors.black))),
               ),
               SizedBox(
                 height: 20,
               ),
               Align(
                   alignment: Alignment.centerLeft,
                   child: Text(
                     'Weight',
                     style: TextStyle(
                         fontFamily: 'Caprasimo',
                         fontWeight: FontWeight.bold,
                         fontSize: 18),
                   )),
               SizedBox(
                 height: 10,
               ),
               TextField(
                 decoration: InputDecoration(
                     contentPadding: EdgeInsets.symmetric(vertical: 10),
                     enabledBorder: OutlineInputBorder(
                         borderSide:
                         const BorderSide(width: 1, color: Colors.black))),
               ),
               SizedBox(
                 height: 20,
               ),
               Align(
                   alignment: Alignment.centerLeft,
                   child: Text(
                     'Height',
                     style: TextStyle(
                         fontFamily: 'Caprasimo',
                         fontWeight: FontWeight.bold,
                         fontSize: 18),
                   )),
               SizedBox(
                 height: 10,
               ),
               TextField(
                 decoration: InputDecoration(
                     contentPadding: EdgeInsets.symmetric(vertical: 10),
                     enabledBorder: OutlineInputBorder(
                         borderSide:
                         const BorderSide(width: 1, color: Colors.black))),
               ),
               SizedBox(
                 height: 20,
               ),
               Align(
                   alignment: Alignment.centerLeft,
                   child: Text(
                     'Brief description about your symptoms',
                     style: TextStyle(
                         fontFamily: 'Caprasimo',
                         fontWeight: FontWeight.bold,
                         fontSize: 18),
                   )),
               SizedBox(
                 height: 10,
               ),
               TextField(
                 decoration: InputDecoration(
                     contentPadding: EdgeInsets.symmetric(vertical: 80),
                     enabledBorder: OutlineInputBorder(
                         borderSide:
                         const BorderSide(width: 1, color: Colors.black))),
               ),
               SizedBox(
                 height: 20,
               ),
               Container(
                 width: 150,
                 height: 30,
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
     );
   }
 }
