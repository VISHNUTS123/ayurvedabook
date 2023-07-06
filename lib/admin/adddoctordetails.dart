import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'admin_landing.dart';
import 'appdraweradmin.dart';
import 'addnewdoctor.dart';

class AddDoctor extends StatefulWidget {
  const AddDoctor({super.key});

  @override
  State<AddDoctor> createState() => _AddDoctorState();
}

class _AddDoctorState extends State<AddDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'DOCTORS',
      ),
      backgroundColor: const Color(0xff764abc),
    ),
      drawer: AdminAppDrawer(),


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

                      title: Text("Doctor ${index + 1}",style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text('Specialization'),
                    );
                  }),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding:EdgeInsets.only(bottom: 20,right: 20),
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewDoctorAdd()
                        // Replace NextScreen with the screen you want to navigate to
                      ),
                    );
                  },
                  child: Icon(Icons.add),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
