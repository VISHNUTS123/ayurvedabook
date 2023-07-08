import 'package:ayurvedabook/main.dart';
import 'package:ayurvedabook/appdraweruser.dart';
import 'package:flutter/material.dart';
import 'treatementdetails.dart';

class Finalview extends StatefulWidget {
  const Finalview({super.key});

  @override
  State<Finalview> createState() => _FinalviewState();
}

class _FinalviewState extends State<Finalview> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: const Text(
         'CLINCAL HISTORY',
       ),
       backgroundColor: const Color(0xff764abc),
     ),
     drawer: UserDrawer(),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Expanded(
           child: SingleChildScrollView(
             child: Padding(
               padding: EdgeInsets.all(20),
               child: Container(
                 child: Column(
                   children: [
                     Align(
                         alignment: Alignment.topLeft,
                         child: Text(
                           'Symptoms',
                           style: TextStyle(
                               fontWeight: FontWeight.bold, fontFamily: 'Caprasimo',fontSize: 30),
                         )),
                     SizedBox(
                       height: 10,
                     ),
                     SizedBox(
                       child: Text(
                         'Diarrhea, dehydration, vomiting, muscle cramps, rapid heart rate, low blood pressure, nausea.',style: TextStyle(fontSize: 22),),
                     ),
                     SizedBox(
                       height: 10,
                     ),
                     Align(
                         alignment: Alignment.topLeft,
                         child: Text(
                           'Disease after diagnosis',
                           style: TextStyle(
                               fontWeight: FontWeight.bold, fontFamily: 'Caprasimo',fontSize: 30),
                         )),
                     SizedBox(
                       height: 10,
                     ),
                     SizedBox(
                       child: Align(
                           alignment: Alignment.topLeft,
                           child: Text(
                             'This symptoms indicates that you are affected by Cholera',style: TextStyle(fontSize: 22),)),
                     ),
                     SizedBox(
                       height: 10,
                     ),
                     Align(
                         alignment: Alignment.topLeft,
                         child: Text(
                           'Medications',
                           style: TextStyle(
                               fontWeight: FontWeight.bold, fontFamily: 'Caprasimo',fontSize: 30,color: Colors.redAccent),
                         )),
                     SizedBox(
                       height: 10,
                     ),
                     SizedBox(
                       child: Align(
                           alignment: Alignment.topLeft,
                           child: Text(
                             '1)Oral Rehydration Solution (ORS) \n2) Doxycycline : twice a day after food \n3) Azithromycin :Night - before food\n4)Ciprofloxacin: Morning - before food',style: TextStyle(fontSize: 22),)),
                     ),
                   ],
                 ),
               ),
             ),
           ),
         ),
       ],
     ),
   );
  }
}
