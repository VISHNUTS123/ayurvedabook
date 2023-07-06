import 'package:ayurvedabook/main.dart';
import 'package:ayurvedabook/USER/userlanding.dart';
import 'package:ayurvedabook/USER/newcomplaints.dart';
import 'package:flutter/material.dart';
import 'package:ayurvedabook/appdraweruser.dart';
import 'complaintResponseview.dart';

class oldcomplaints extends StatefulWidget {
  const oldcomplaints({super.key});

  @override
  State<oldcomplaints> createState() => _oldcomplaintsState();
}

class _oldcomplaintsState extends State<oldcomplaints> {
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
                              builder: (context) => ViewResponse(),
                            ),
                          );
                        },
                        child: const Text(
                          "View Response",
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),

                      ),
                      title: Text("List item ${index + 1}",style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text('Description'),
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
                          builder: (context) =>
                          complaintnew()// Replace NextScreen with the screen you want to navigate to
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
