import 'package:ayurvedabook/USER/doctordetails.dart';
import 'package:ayurvedabook/USER/userlanding.dart';
import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'package:ayurvedabook/USER/doctorlist.dart';
import 'package:ayurvedabook/appdraweruser.dart';

List<String> doctors = [
  'Dr.Vinay',
  'Dr. Akash S',
  'Dr. Amal ',
  'Dr. Ajay ',
  'Dr. Paul ',




];

List<String> specailization =[
  'Orthopedics',
  'Pediatrics',
  'Internal medicine',
  'Dermatology',
  'Psychiatry',

];



class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
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
                  itemCount: doctors.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: const Icon(Icons.health_and_safety_outlined),
                      trailing: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsDoctor(),
                            ),
                          );
                        },
                        child: const Text(
                          "Details",
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),

                      ),
                      title: Text(doctors[index]),
                      subtitle: Text(specailization[index]),
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
