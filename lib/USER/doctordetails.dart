import 'package:flutter/material.dart';
import 'package:ayurvedabook/appdraweruser.dart';
import 'package:ayurvedabook/API/api.dart';
import 'MODEL/MODELDOCTOR.dart';
import 'book.dart';

class DetailsDoctor extends StatefulWidget {
  final int id;

  const DetailsDoctor({required this.id, Key? key}) : super(key: key);

  @override
  _DetailsDoctorState createState() => _DetailsDoctorState();
}

class _DetailsDoctorState extends State<DetailsDoctor> {
  DoctorDetails? doctorDetails;

  @override
  void initState() {
    super.initState();
    fetchDoctorDetails(widget.id); // Call the method to fetch doctor details
  }

  Future<void> fetchDoctorDetails(int doctorId) async {
    ReturnDetails details = ReturnDetails();
    DoctorDetails? fetchedDetails = await details.fetchDoctorDetails(doctorId); // Update to use doctorId parameter
    setState(() {
      doctorDetails = fetchedDetails;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'KNOW MORE ABOUT THE DOCTOR',
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: UserDrawer(),
      body: Center(
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/doctor.jpg'),
                        radius: 75,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        doctorDetails?.doctorname ?? '',
                        style: TextStyle(
                          fontFamily: 'Caprasimo',
                          fontSize: 27,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          doctorDetails?.doctorspecialization ?? '',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Experience',
                        style: TextStyle(
                          fontFamily: 'Caprasimo',
                          fontSize: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          doctorDetails?.doctorexperience.toString() ?? '',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Introduction ',
                        style: TextStyle(
                          fontFamily: 'Caprasimo',
                          fontSize: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          """Dr. Ajay is a highly skilled dermatologist specialist with extensive experience in the field of dermatology. With a passion for skin health and a dedication to patient care, Dr. Ajay is committed to providing the highest level of dermatological services. His expertise covers a wide range of skin conditions, including acne, eczema, psoriasis, skin infections, and allergies. Dr. Ajay stays up to date with the latest advancements in dermatology and utilizes advanced diagnostic tools and treatment techniques to deliver accurate diagnoses and effective treatments. Patients appreciate his compassionate approach, clear communication, and personalized treatment plans, making him a trusted choice for all dermatological needs.""",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Availability',
                        style: TextStyle(
                          fontFamily: 'Caprasimo',
                          fontSize: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "All working days Time : 10 AM to 2 PM",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Booking()),
                        );
                      },
                      child: Text(
                        'BOOK NOW',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
