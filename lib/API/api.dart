import 'package:ayurvedabook/Registration.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiCalling {
  final String url = "https://94cb-117-201-205-144.ngrok-free.app"; // Corrected URL
//this url is updated evertime you host the server via anaconda and ngrok
  // the command used for anconda prompt is Python manage.py runserver first use cd to navigate to the folder in which the manage.py stored
 // ngrok command : ngrok http 8000 --host-header rewrite
  // after this u will get a new server url
  PostRegister(data, apiUrl) async {
    var completeUrl = url + apiUrl;
    return await http.post(
      Uri.parse(completeUrl),
      body: data,
    );
  }

  postingData(upiurl) async {
    var completeUrl = url + upiurl;
    return await http.post(Uri.parse(completeUrl));
  }

  putData(data, apiUrl) async {
    var fullUrl = url + apiUrl;
    return await http.put(
      Uri.parse(fullUrl),
      body: data,
    );
  }

  putsData( apiUrl) async {
    var fullUrl = url + apiUrl;
    return await http.put(
      Uri.parse(fullUrl),
    );
  }

  getData(apiUrl) async {
    var completeUrl = url + apiUrl;
    // await _getToken();
    return await http.get(
      Uri.parse(completeUrl),
      // headers: _setHeaders()
    );
  }

  deleteData(apiUrl)async{
    var fullUrl = url + apiUrl;
    return await http.delete(
      Uri.parse(fullUrl),
    );
  }
}



