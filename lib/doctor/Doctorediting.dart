import 'package:ayurvedabook/appdrawerdoctor.dart';
import 'package:flutter/material.dart';
import 'dart:convert';// requires to convert the datas into json format
import 'package:ayurvedabook/API/api.dart';
import 'package:http/http.dart' as http;
import 'package:ayurvedabook/USER/userlanding.dart';
import 'package:ayurvedabook/doctor/doctorlanding.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ayurvedabook/doctor/doctorlanding.dart';


class DoctorEditing extends StatefulWidget {
  const DoctorEditing({super.key});

  @override
  State<DoctorEditing> createState() => _DoctorEditingState();

}


class _DoctorEditingState extends State<DoctorEditing> {


  TextEditingController nameController = TextEditingController();//creating textediting contoller for each field
  TextEditingController  qualificationController = TextEditingController();
  TextEditingController  experienceController = TextEditingController();
  TextEditingController  emailController = TextEditingController();
  TextEditingController  phoneController = TextEditingController();
  TextEditingController  specializationController = TextEditingController();
  TextEditingController  genderController = TextEditingController();
  TextEditingController availabledaysController = TextEditingController();
  TextEditingController  availabletimeController = TextEditingController();
  TextEditingController  profilephotController = TextEditingController();


  late int id;
  String name = "";
  String qualification = "";
  String phone = "";
  String experience = "";
  String gender = "";
  String email = "";
  String specialization = "";
  String availabledays = "";
  String availabletime = "";
  String profileurl = "";

  late SharedPreferences data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _viewPro();
  }
  final Key = GlobalKey<FormState>();

  Future<void> _viewPro() async {
    data = await SharedPreferences.getInstance();
    id = (data.getInt('id') ?? 0 );
    print('login_idupdate ${id}');
    var res = await ApiCalling()
        .getData('api/update_doctor/' + id.toString());
    var body = json.decode(res.body);
    print(body);
    setState(() {
      name = body['data']['doctorname'];// assinging values stored in the server to different variables
      qualification= body['data']['doctorqualification'];
      gender = body['data']['doctorgender'];
      experience = body['data']['doctorexprience'];
      specialization = body['data']['doctorspecialization'];
      availabledays = body['data']['doctor_available_days'];
      phone = body['data']['doctorphone'];
      email = body['data']['doctoremail'];
      availabletime = body['data']['doctor_available_time'];
      profileurl = body['data']['doctorprofile_photo'];


      nameController.text = name;
      qualificationController.text=qualification;
      genderController.text=gender;
      emailController.text = email;
      phoneController.text = phone;
      specializationController.text = specialization;
      availabledays =availabledaysController.text;
      availabletime =availabletimeController.text;
      experience =experienceController.text;

    });
  }
  Update() async {
    setState(() {
      var _isLoading = true;
    });//function to process the updation

    var data = {

    };
    print(data);
    var res = await ApiCalling().putData(data, 'api/update_doctor/'+id.toString());//giving the data to the specific user usinfg the userid
    var body = json.decode(res.body);//decoding the datas stored in the server to json format
    print(body);
    if (body['success'] == true) {
      // checking whether the details needed to be printed
      print(body);

      Fluttertoast.showToast(
        msg: body['message'].toString(),
        backgroundColor: Colors.grey,
      );

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => profile1()));
    } else {
      Fluttertoast.showToast(
        msg: body['message'].toString(),
        backgroundColor: Colors.grey,
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('DOCTOR DETAILS'),
        backgroundColor: const Color(0xff764abc),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'NAME',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                TextField(
                  controller: nameController,


                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 2, color: Colors.black12))),
                ),
                SizedBox(
                  height: 10,
                ),
                // Align(
                //   alignment: Alignment.topLeft,
                //   child: Text(
                //     'USERNAME',
                //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                //   ),
                // ),
                // TextField(
                //   controller: nameController,
                //   decoration: InputDecoration(
                //       enabledBorder: OutlineInputBorder(
                //           borderSide:
                //               const BorderSide(width: 2, color: Colors.black12))),
                // ),
                // SizedBox(
                //   height: 10,
                // ),
                // Align(
                //   alignment: Alignment.topLeft,
                //   child: Text(
                //     'PASSWORD',
                //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                //   ),
                // ),
                // TextField(
                //
                //   decoration: InputDecoration(
                //       enabledBorder: OutlineInputBorder(
                //           borderSide:
                //               const BorderSide(width: 2, color: Colors.black12))),
                // ),
                // SizedBox(
                //   height: 10,
                // ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'QUALIFICATION',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                TextField(
                  controller:qualificationController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 2, color: Colors.black12))),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'SPECIALIZATION',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                TextField(
                  controller:specializationController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 2, color: Colors.black12))),
                ),
                SizedBox(
                  height: 10,),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'EXPERIENCE',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            TextField(
              controller:experienceController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 2, color: Colors.black12))),
            ),
            SizedBox(
              height: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'GENDER',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                TextField(
                  controller: genderController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 2, color: Colors.black12))),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'PHONE NUMBER',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 2, color: Colors.black12))),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 2, color: Colors.black12))),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'AVAILABLE DAYS',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                TextField(
                  controller: availabledaysController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 2, color: Colors.black12))),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'AVAILABLE TIME',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                TextField(
                   controller: availabletimeController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 2, color: Colors.black12))),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'PROFILE PHOTO URL',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                TextField(
                    controller: profilephotController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 2, color: Colors.black12))),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {


                      Update();//calling of the function to update the details
                      Fluttertoast.showToast(//to display messages
                        msg: "SUCCESSFULLY COMPLETED THE UPDATION",
                        backgroundColor: Colors.grey,
                      );//FLUTTERTOAST IS USED TO POPUP message

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>DoctorLanding() ));//redirecting the user to profilepage of the user after the completion of updation
                    },
                    child: Text(
                      'UPDATE',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
