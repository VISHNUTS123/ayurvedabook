import 'package:ayurvedabook/USER/userlanding.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import 'userlanding.dart';
import 'package:ayurvedabook/appdraweruser.dart';
import 'viefinaltreatment.dart';

class TreatmentDetails extends StatefulWidget {
  const TreatmentDetails({super.key});

  @override
  State<TreatmentDetails> createState() => _TreatmentDetailsState();
}

class _TreatmentDetailsState extends State<TreatmentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Complaints and Responses',
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: UserDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child:ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: const Icon(Icons.list),
                      trailing: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Finalview()));
                        },
                        child: const Text(
                          "Treatment details",
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),

                      ),
                      title: Text("Disease ${index + 1}",style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text('Date of Consultation'),
                    );
                  }),
            ),


          ],
        ),
      ),



    );
  }
}
