
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class APIService {
  // API key
  static const _api_key ='19d71cf63cmsh61e25c02ee4c210p141baajsnc996e652d0e9';
  // Base API url
  static  String _baseUrl = "https://google-translate1.p.rapidapi.com/language/translate/v2";
  // Base headers for Response url
  static  Map<String, String> _headers = {
    "content-type": "application/x-www-form-urlencoded",
    "x-rapidapi-host": "google-translate1.p.rapidapi.com",
    "x-rapidapi-key":'19d71cf63cmsh61e25c02ee4c210p141baajsnc996e652d0e9',
  };

  // Base API request to get response
  Future<dynamic> get({
    required String endpoint,
    required Map<String, String> query,
  }) async {
    Uri uri = Uri.https(_baseUrl, endpoint, query);
    final response = await http.get(uri, headers: _headers);
    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      return json.decode(response.body);
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load json data');
    }
  }
}
