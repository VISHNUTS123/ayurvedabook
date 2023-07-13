import 'package:ayurvedabook/API/api.dart';
import 'package:ayurvedabook/appdraweruser.dart';
import 'package:flutter/material.dart';
import 'dart:convert';// requires to convert the datas into json format
import 'package:http/http.dart' as http;
import 'package:ayurvedabook/USER/userlanding.dart';
import 'package:ayurvedabook/doctor/doctorlanding.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ayurvedabook/USER/doctordetails.dart';
import 'package:ayurvedabook/USER/doctorlist.dart';



class DoctorDetails {
  final String doctorname;
  final String doctorqualification;
  final int doctorexperience;
  final String doctoremail;
  final String doctoravailabledays;
  final String availabltime;
  final String doctorspecialization;
  final String imageUrl;
  final int id;
  bool isFavorite;

 DoctorDetails({
    required this.doctorname,
    required this.availabltime,
    required this.doctoravailabledays,
    required this.doctoremail,
   required this.doctorexperience,
    required this.doctorqualification,
    required this.doctorspecialization,
    required this.imageUrl,
    required this.id,
    this.isFavorite = false,
  });

  factory DoctorDetails.fromJson(Map<String, dynamic> json) {
    return DoctorDetails(
      id: json['id'],
      doctorname: json['doctorname'] ?? '',
      doctoremail: json['doctoremail'] ?? '',
      availabltime: json['doctor_available-time'] ?? '',
      doctoravailabledays: json['doctor_available_days'] ?? '',
      doctorexperience: int.parse(json['doctorexperience']),
      doctorqualification: json['doctorqualification'] ?? '',
      doctorspecialization: json['doctorspecialization'] ?? '',
      imageUrl: json['doctorprofile_photo'] ?? '',
    );
  }

}

class ReturnValue {
  late SharedPreferences prefs;

  Future<List<DoctorDetails>> fetchProductss() async {
    var response = await ApiCalling().getData('/api/get_alldoctor');
    if (response.statusCode == 200) {
      var items = json.decode(response.body);
      print((items));

      List<DoctorDetails> products = List<DoctorDetails>.from(
          items['data'].map((e) => DoctorDetails.fromJson(e)).toList());
      return products;
    } else {
      List<DoctorDetails> doctordetails = [];
      return doctordetails;
    }
  }
}

class ReturnDetails {
  Future<DoctorDetails> fetchDoctorDetails(int doctorId) async {
    var response = await ApiCalling().getData('/api/get_alldoctor/' + doctorId.toString());
    if (response.statusCode == 200) {
      var item = json.decode(response.body);
      print(item);

      DoctorDetails product = DoctorDetails.fromJson(item['data']);
      return product;
    } else {
      throw Exception('Failed to fetch doctor details');
    }
  }
}
