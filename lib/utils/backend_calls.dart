import 'package:http/http.dart' as http;
import 'dart:async';

class BackendCalls {
  static final BackendCalls _singleton = new BackendCalls._internal();
  factory BackendCalls() {
    return _singleton;
  }
  BackendCalls._internal();


  String url = "https://wandering-mystic.firebaseio.com";
  Map<String, String> headers = { "Accept" : "application/json" };

  Future<http.Response> getPackages() {
    return http.get(
      Uri.encodeFull(url + "/packages.json"),
      headers: headers
    );
  }
}