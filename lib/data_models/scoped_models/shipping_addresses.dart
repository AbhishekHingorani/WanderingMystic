import "package:scoped_model/scoped_model.dart";
import '../models/address.dart';
import 'package:http/http.dart' as http;
import '../../utils/backend_calls.dart';
import 'dart:convert';

class ShippingAddressModel extends Model {

  BackendCalls backendCalls = BackendCalls();
  List<Address> _shippingAddresses = [];
  bool _isLoading = false;
  bool _areAddressesFetched = false;

  void fetchShippingAddresses(String userId){
    if(_areAddressesFetched == false){
      _areAddressesFetched = true;
      _isLoading = true;
      notifyListeners();
      backendCalls.getShippingAddresses(userId).then((http.Response response){
        var data = json.decode(response.body);
        data.forEach((data){
          _shippingAddresses.add(Address.fromJson(data));
        });
        _isLoading = false;
        notifyListeners(); 
      });
    }
  }

  List<Address> get shippingAddresses{
    return List.from(_shippingAddresses);
  }

  bool get isFetchingAddresses{
    return _isLoading;
  }

  void addNewAddress(add1 ,add2, city, state, country, zipCode){
    _shippingAddresses.add(
      Address(
        id: "temp",
        addressLine1: add1,
        addressLine2: add2,
        city: city,
        state: state,
        country: country,
        zipCode: zipCode
      )
    );
    notifyListeners();
  }
}