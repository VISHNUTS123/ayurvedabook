import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'PostTreatmentDetails.dart';
import 'package:ayurvedabook/appdrawerdoctor.dart';

class PreviousView extends StatefulWidget {
  const PreviousView({super.key});

  @override
  State<PreviousView> createState() => _PreviousViewState();
}

class _PreviousViewState extends State<PreviousView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'DETAILS',
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: CustomDrawer(),
      body: Center(
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
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Disease after Diagnosis',
                          style: TextStyle(
                              fontFamily: 'Caprasimo',
                              fontSize: 24),
                        )),
                    SizedBox(
                      height: 10,
                    ),

                  SizedBox(child: Align(
                      alignment: Alignment.topLeft,
                    child: Text('Cholera',style: TextStyle(fontSize: 18),)),),

                    SizedBox(height: 20,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Prescription',
                          style: TextStyle(
                              fontFamily: 'Caprasimo',

                              fontSize: 24),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(child: Text("""1) Oral rehydration solution (ORS): Drink ORS solution frequently to replenish lost fluids and electrolytes.
Antibiotics: \n2) Take prescribed antibiotics (e.g., azithromycin or doxycycline) to treat the bacterial infection.
Antiemetics:\n3) Use antiemetic medication (e.g., ondansetron) to reduce nausea and vomiting.""",style: TextStyle(fontSize: 18),),),


                    SizedBox(height: 20,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Instructions',
                          style: TextStyle(
                              fontFamily: 'Caprasimo',

                              fontSize: 24),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("""1) Drink small amounts of ORS solution regularly.\n2) Take antibiotics as directed by your doctor.\n3) Use antiemetics to control nausea and vomiting.""",style: TextStyle(fontSize: 18),)),),

                    SizedBox(height: 50,),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
