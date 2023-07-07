import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'appdraweradmin.dart';
import 'admin_landing.dart';
import 'viewcomplaintonly.dart';

class ViewComplaints extends StatefulWidget {
  const ViewComplaints({super.key});

  @override
  State<ViewComplaints> createState() => _ViewComplaintsState();
}

class _ViewComplaintsState extends State<ViewComplaints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'Complaints And Replies',
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
                      trailing: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Complaint()));
                        },
                        child: const Text(
                          "View",
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

              ),
            ),
          ],
        ),
      ),
    );
  }
}
