import 'package:ayurvedabook/appdraweruser.dart';
import 'package:flutter/material.dart';
import 'package:ayurvedabook/Registration.dart';
import 'package:ayurvedabook/USER/userlanding.dart';
import 'package:ayurvedabook/admin/admin_landing.dart';
import 'dart:convert';// requires to convert the datas into json format
import 'package:ayurvedabook/API/api.dart';
import 'package:http/http.dart' as http;
import 'package:ayurvedabook/USER/userlanding.dart';
import 'package:ayurvedabook/doctor/doctorlanding.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';


class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();

}


class _UserDetailsState extends State<UserDetails> {


  TextEditingController nameController = TextEditingController();//creating textediting contoller for each field
  TextEditingController  ageController = TextEditingController();
  TextEditingController  genderController = TextEditingController();
  TextEditingController  emailController = TextEditingController();
  TextEditingController  phoneController = TextEditingController();
  TextEditingController  addController = TextEditingController();
  TextEditingController  placeController = TextEditingController();
  TextEditingController  postController = TextEditingController();
  TextEditingController  pinController = TextEditingController();

  late int user_id;
  String name = "";
  String address = "";
  String phone = "";
  String age = "";
  String gender = "";
  String email = "";
  String place = "";
  String post = "";
  String pin = "";
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
    user_id = (data.getInt('user_id') ?? 0 );
    print('login_idupdate ${user_id}');
    var res = await ApiCalling()
        .getData('/api/single_patient/' + user_id.toString());
    var body = json.decode(res.body);
    print(body);
    setState(() {
      name = body['data']['patientname'];// assinging values stored in the server to different variables
      age = body['data']['patientage'];
      gender = body['data']['patientgender'];
      address = body['data']['patientaddress'];
      place = body['data']['patientplace'];
      post = body['data']['patientpost'];
      phone = body['data']['patientphone'];
      email = body['data']['patientemail'];
      pin = body['data']['patientpincode'];

      nameController.text = name;
      ageController.text=age;
      genderController.text=gender;
      emailController.text = email;
      phoneController.text = phone;
      addController.text = address;
      placeController.text=place;
      postController.text=post;
      pinController.text=pin;

    });
  }
  Update() async {
    setState(() {
      var _isLoading = true;
    });//function to process the updation

    var data = {
      "patientname": nameController.text,//replacing the variables with the data collected using textcontroller
      "patientaddress": addController.text,
      "patientemail": emailController.text,
      "patientage": ageController.text,
      "patientgender":gender.toString(),
      "patientphone": phoneController.text,
      "patientplace": placeController.text,
      "patientpost": postController.text,
      "patientpincode": pinController.text,
    };
    print(data);
    var res = await ApiCalling().putData(data, '/api/update_patient/'+user_id.toString());//giving the data to the specific user usinfg the userid
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
        title: const Text('USER DETAILS'),
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
                    'AGE',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                TextField(
                  controller: ageController,
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
                    'ADDRESS',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                TextField(
                  controller: addController,
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
                    'PLACE',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                TextField(
                  controller: placeController,
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
                    'PIN CODE',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                TextField(
                  controller: pinController,
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
                    'POST OFFICE',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                TextField(
                  controller: postController,
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
                              builder: (context) => profile1()));//redirecting the user to profilepage of the user after the completion of updation
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
