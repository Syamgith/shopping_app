import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import '../models/http_exceptions.dart';

class Auth with ChangeNotifier {
  String _token;
  DateTime _expiryDate;
  String _userId;

  Future<void> _authenticate(
      String email, String password, String urlseg) async {
    final url =
        'https://identitytoolkit.googleapis.com/v1/accounts:$urlseg?key=AIzaSyD-kvaCqRt_Q5ABN4vfhb4g1bHbjGTRIJk';
    try {
      final response = await http.post(url,
          body: json.encode({
            'email': email,
            'password': password,
            'returnSecureToken': true,
          }));
      final resposeData = json.decode(response.body);
      if (resposeData['error'] != null) {
        throw (HttpExceptions(resposeData['error']['message']));
      }
    } catch (e) {
      throw (e);
    }
  }

  Future<void> signUp(String email, String password) async {
    return _authenticate(email, password, 'signUp');
  }

  Future<void> signIn(String email, String password) async {
    return _authenticate(email, password, 'signInWithPassword');
  }
}
