import 'package:ayurvedabook/Registration.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiCalling {
  final String url = "https://7663-117-223-87-65.ngrok-free.app";

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



