import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Auth with ChangeNotifier {
  signup(String email, String password, String username,
      String phonenumber) async {
    Uri url = Uri.parse("http://127.0.0.1:8000/auth/register");
    try {
      var response = await http.post(url, body: {
        "email": email,
        "password": password,
        "username": username,
        "phonenumber": phonenumber,
      });
      var responseData = json.decode(response.body);
      print(responseData);
      if (responseData != null) {
        throw responseData;
        
      }
      
    } catch (e) {
      throw e;
    }
  }

  Future<void> login(
      String email, String password, BuildContext context) async {
    Uri url = Uri.parse("http://127.0.0.1:8000/auth/login");
    try {
      var response = await http.post(url, body: {
        "email": email,
        "password": password,
      });
      var responseData = json.decode(response.body);
      if (responseData['message'] != null) {
        throw responseData['message'];
      }
      print(json.decode(response.body));
    } catch (e) {
      throw e;
    }
  }
}
