import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'doctorlanding.dart';
import 'package:ayurvedabook/appdrawerdoctor.dart';



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
List<String> Time =[
  '10 AM',
  '11 AM',
  '11:30 AM',
  '12 AM',
  '1 PM',



];

class Bookingdetails extends StatefulWidget {
  const Bookingdetails({super.key});

  @override
  State<Bookingdetails> createState() => _BookingdetailsState();
}

class _BookingdetailsState extends State<Bookingdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'YOUR APPOINTMENTS',
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
                  return GestureDetector(
                    onTap: (){

                    },
                    child: ListTile(
                      leading: const Icon(Icons.bookmark),
                      trailing: Column(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Accept",
                                style: TextStyle(color: Colors.green, fontSize: 15),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Reject",
                                style: TextStyle(color: Colors.red, fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                      title: Text(name[index],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      subtitle:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(Date[index]),
                          Text(Time[index]),
                        ],
                      ),
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
