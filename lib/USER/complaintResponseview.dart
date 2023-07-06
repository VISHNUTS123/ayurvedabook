import 'package:ayurvedabook/main.dart';
import 'package:ayurvedabook/appdraweruser.dart';
import 'package:flutter/material.dart';
import 'complaints.dart';

class ViewResponse extends StatefulWidget {
  const ViewResponse({super.key});

  @override
  State<ViewResponse> createState() => _ViewResponseState();
}

class _ViewResponseState extends State<ViewResponse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'RESPONSE',
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer:UserDrawer() ,

      body: Center(
       child: SingleChildScrollView(
         child: Center(
         child: Align(
           alignment: Alignment.topCenter,
           child: Padding(
             padding: EdgeInsets.all(10),
             child: SingleChildScrollView(
               child: Padding(
                 padding: EdgeInsets.all(10),
                 child: Column(
                   children: [

                     Align(
                         alignment: Alignment.topLeft,
                         child: Text(
                           'Complaint',
                           style: TextStyle(
                               fontFamily: 'Caprasimo',
                               fontSize: 27),
                         )),
                     SizedBox(
                       height: 10,
                     ),

                     SizedBox(child: Align(
                         alignment: Alignment.topLeft,
                         child: Text('App crashed recently',style: TextStyle(fontSize: 18),)),),

                     SizedBox(height: 20,),

                     Align(
                         alignment: Alignment.centerLeft,
                         child: Text(
                           'Response ',
                           style: TextStyle(
                               fontFamily: 'Caprasimo',

                               fontSize: 24),
                         )),
                     SizedBox(
                       height: 10,
                     ),
                     SizedBox(child: Align(
                         alignment: Alignment.topLeft,
                         child: Text("""Dear valued users,

We would like to extend our sincerest apologies for the recent app crashing issues that you may have experienced. As a hospital tech team, we understand the frustration and inconvenience caused by these disruptions, and we deeply regret any inconvenience caused.

We are fully aware of the impact that app crashes can have on your workflow and patient care. Please rest assured that we are actively investigating the root cause of these crashes and working diligently to resolve the issue. Our team is committed to providing a stable and reliable app experience for all our users.

We understand the importance of uninterrupted access to critical healthcare information, and we assure you that we are taking all necessary measures to prevent similar incidents in the future. Your feedback and reports have been invaluable in helping us identify and address these technical challenges.

We appreciate your patience and understanding during this time. We remain committed to delivering a seamless and efficient app experience, and we will keep you informed of any updates or improvements. Thank you for your continued support.

Sincerely,
The Hospital Tech Team""",style: TextStyle(fontSize: 18),)),),

                     SizedBox(height: 50,),
                   ],
                 ),
               ),
             ),
           ),
         ),
       )
         ,),),


    );

  }
}
