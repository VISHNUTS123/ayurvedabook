import 'package:flutter/material.dart';
import 'package:ayurvedabook/appdraweruser.dart';
import 'MODEL/MODELDOCTOR.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  List<DoctorDetails> doctorDetailsList = [];
  void bookmenu() {
    DateTime selectedDate = DateTime.now();
    TimeOfDay selectedTime = TimeOfDay.now();

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            height: 200,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Select Date and Time',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Perform the booking logic using selectedDate and selectedTime
                      // Close the bottom sheet
                    },
                    child: Text('Book'),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () async {
                      final DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2100),
                      );
                      if (pickedDate != null && pickedDate != selectedDate) {
                        setState(() {
                          selectedDate = pickedDate;
                        });
                      }
                    },
                    child: Text('Select Date'),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () async {
                      final TimeOfDay? pickedTime = await showTimePicker(
                        context: context,
                        initialTime: selectedTime,
                      );
                      if (pickedTime != null && pickedTime != selectedTime) {
                        setState(() {
                          selectedTime = pickedTime;
                        });
                      }
                    },
                    child: Text('Select Time'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

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
          'BOOK AN APPOINTMENT',
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: UserDrawer(),
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
                shrinkWrap: true,
                itemCount: doctorDetailsList.length,
                itemBuilder: (BuildContext context, int index) {
                  DoctorDetails doctor = doctorDetailsList[index];
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: const Icon(Icons.health_and_safety_outlined),
                      trailing: TextButton(
                        onPressed: () {
                          bookmenu();
                        },
                        child: const Text(
                          "BOOK",
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),
                      ),
                      title: Text(
                       'Dr.${ doctor.doctorname}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ), //used to print the doctorname
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(doctor.doctorspecialization),
                          Text('Experience: ${doctor.doctorexperience} years'),
                          Text('Availability: ${doctor.doctoravailabledays}'),
                          Text('Available Time: ${doctor.availabltime}'),
                          // Add more subtitles here
                        ],
                      ),
                      // subtitle: Text(doctor.doctorspecialization),//used to print doctor speccialization
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

  // Mock data for demonstration purposes
}
