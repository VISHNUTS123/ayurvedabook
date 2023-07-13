import 'package:ayurvedabook/USER/doctordetails.dart';
import 'package:ayurvedabook/USER/userlanding.dart';
import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'package:ayurvedabook/USER/doctorlist.dart';
import 'package:ayurvedabook/appdraweruser.dart';
import 'MODEL/MODELDOCTOR.dart';
import 'package:ayurvedabook/API/api.dart';




class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<DoctorDetails> doctorDetailsList = [];
  @override
  void initState() {
    super.initState();
    fetchDoctorDetails(); // Call the method to fetch doctor details
  }
  Future<void> fetchDoctorDetails() async {
    ReturnValue returnValue = ReturnValue();
    List<DoctorDetails> fetchedDetails = await returnValue.fetchProductss();
    setState(() {
      doctorDetailsList = fetchedDetails;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Our Doctors',
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer:UserDrawer() ,
      body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

                 Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

              Expanded(
                child: ListView.builder(
                  itemCount: doctorDetailsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    DoctorDetails doctor = doctorDetailsList[index];
                    return ListTile(
                      leading: const Icon(Icons.health_and_safety_outlined),
                      trailing: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsDoctor(doctorId: doctor.id),
                            ),
                          );
                        },
                        child: const Text(
                          "Details",
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),
                      ),
                      title: Text(doctor.doctorname),//used to print the doctorname
                      subtitle: Text(doctor.doctorspecialization),//used to print doctor speccialization
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
