import 'dart:async';
import 'package:http/http.dart' as http;

const baseURL = 'https://jsonplaceholder.typicode.com';

class API {
  static Future getUser() {
    var url = baseURL + '/users';
    print(url);
    return http.get(url);
  }
}