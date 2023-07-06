import 'package:flutter/material.dart';
import 'package:ayurvedabook/Registration.dart';
import 'package:ayurvedabook/login.dart';
import 'package:ayurvedabook/USER/userlanding.dart';


void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomePage()));
}
class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('WELCOME',style: TextStyle(
                  fontFamily: 'Caprasimo',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),),
              ),
              SizedBox(
                height: 15,
              ),
              Text(' Ayurveda: “knowledge of life”',style: TextStyle(

                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),  ),

              SizedBox(height: 60,),
              Image.asset('images/addoctor.jpg'),
              SizedBox(
                height: 120,
              ),


              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () { Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => login1()));

                },
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(),
                    color: Colors.lightBlue,
                  ),

                  child: Center(child: Text('GET STARTED',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                ),
              ),
              SizedBox(
                height: 10, // <-- SEE HERE
              ),
            ],),
        ),
      ),
    );
  }
}
