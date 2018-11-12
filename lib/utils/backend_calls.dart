import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class BackendCalls {
  static final BackendCalls _singleton = new BackendCalls._internal();
  factory BackendCalls() {
    return _singleton;
  }
  BackendCalls._internal();


  String url = "https://wandering-mystic.firebaseio.com";
  Map<String, String> headers = { "Accept" : "application/json" };

  Future<http.Response> login(email, password){
    return http.get(
      Uri.encodeFull(url + "/login.json"),
      headers: headers
    );
  }

  Future<http.Response> getPackages() {
    return http.get(
      Uri.encodeFull(url + "/packages.json"),
      headers: headers
    );
  }

  Future<http.Response> getSinglePackageDetails(String id) {
    return http.get(
      Uri.encodeFull(url + "/packageDetails/" + id + ".json"),
      headers: headers
    );
  }

  Future<http.Response> searchPackages(String value) {
    return http.get(
      Uri.encodeFull(url + "/searchPackages.json"),
      headers: headers,
      //body: "{'query' : '" + value + "'}"
    );
  }

  Future<http.Response> getProductsList() {
    return http.get(
      Uri.encodeFull(url + "/products.json"),
      headers: headers
    );
  }

  Future<http.Response> getSingleProductDetails(String id) {
    return http.get(
      Uri.encodeFull(url + "/productDetails/" + id + ".json"),
      headers: headers
    );
  }

  Future<http.Response> addProductToCart(String id){
    print("fired");
    return http.post(
      Uri.encodeFull(url + "/cart.json"),
      headers: headers,
      body: json.encode({
        "id": id,
        "count": "1"
      })
    );
  }

  Future<http.Response> getCartItems(String id){
    return http.get(
      Uri.encodeFull(url + "/cart.json"), //cartItems.json
      headers: headers,
    );
  }

  Future<http.Response> getOrderItems(String id){
    return http.get(
      Uri.encodeFull(url + "/order.json"),
      headers: headers,
    );
  }

  Future<http.Response> getShippingAddresses(String id){
    return http.get(
      Uri.encodeFull(url + "/address.json"),
      headers: headers,
    );
  }

}