import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'doctorlanding.dart';
import 'package:ayurvedabook/appdrawerdoctor.dart';
import 'newtreatmentdetails.dart';
import 'PostTreatmentDetails.dart';


List<String> name = [
  'Ajay',
  'Sreehari',
  'Ajmal ',
  'Gokul ',
  'Ansan ',




];

List<String> Date =[
  '23-06-2023',
  '24-06-2023',
  '25-06-2023',
  '26-06-2023',
  '27-06-2023',


];

class PatientDetails extends StatefulWidget {
  const PatientDetails({super.key});

  @override
  State<PatientDetails> createState() => _PatientDetailsState();
}

class _PatientDetailsState extends State<PatientDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'YOUR PATIENTS',
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: CustomDrawer(),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Expanded(
              child: ListView.builder(
                itemCount: name.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: const Icon(Icons.bookmark),
                    trailing: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PostDetails(),
                          ),
                        );
                      },
                      child: const Text(
                        "Treatment Details",
                        style: TextStyle(color: Colors.green, fontSize: 15),
                      ),

                    ),
                    title: Text(
                      name[index],
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(Date[index]),
                      ],
                    ),
                  );
                },
              ),
            )





          ],
        ),
      ),

    );
  }
}
