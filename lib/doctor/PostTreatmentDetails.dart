import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'newtreatmentdetails.dart';
import 'package:ayurvedabook/appdrawerdoctor.dart';
import 'previoustreatmentdetails.dart';

class PostDetails extends StatefulWidget {
  const PostDetails({super.key});

  @override
  State<PostDetails> createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'CLINICAL HISTORY',
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: CustomDrawer(),
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
                            builder: (context) => PreviousView(),
                          ),
                        );
                      },
                      child: const Text(
                        "View Details",
                        style: TextStyle(color: Colors.green, fontSize: 15),
                      ),

                    ),
                    title: Text("Detail ${index + 1}",style: TextStyle(fontWeight: FontWeight.bold),),
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
                        builder: (context) =>NewDetails()
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
