import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'appdraweradmin.dart';
import 'viewcomplaintsandreply.dart';
import 'POSTREPLY.dart';

class Complaint extends StatefulWidget {
  const Complaint({super.key});

  @override
  State<Complaint> createState() => _ComplaintState();
}

class _ComplaintState extends State<Complaint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'COMPLAINT',
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: AdminAppDrawer(),

      body: Center(
        child: Align(
          alignment: Alignment.topLeft,
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
                                'Contact Number',
                                style: TextStyle(
                                    fontFamily: 'Caprasimo',
                                    fontSize: 27),
                              )),
                          SizedBox(
                            height: 10,
                          ),

                          SizedBox(child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('9946197602',style: TextStyle(fontSize: 18),)),),
                          SizedBox(height: 20,),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Subject',
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
                                'Complaint ',
                                style: TextStyle(
                                    fontFamily: 'Caprasimo',

                                    fontSize: 24),
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(child: Align(
                              alignment: Alignment.topLeft,
                              child: Text("""

Dear App Support Team,

I am writing to express my disappointment and frustration regarding the recent crashing of your app. As a loyal user, I have relied on your app for its functionality and convenience, but the frequent crashes have severely hindered my user experience.

The app crashes have caused me inconvenience, wasted my valuable time, and disrupted my workflow. Moreover, it has hindered my ability to access essential features and complete important tasks.

I urge you to take immediate action to rectify this issue, conduct thorough testing, and release a stable version of the app. Your prompt attention to this matter will greatly restore my trust and confidence in your app.

""",style: TextStyle(fontSize: 18),)),),

                          SizedBox(height: 50,),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Reply()));
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: BorderSide(width: 1, color: Colors.black),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent), // Set the background color
                            ),
                            child: Text('Respond',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
            ,),
        ),),




    );
  }
}
