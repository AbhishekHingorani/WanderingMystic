import "package:scoped_model/scoped_model.dart";
import '../models/order_item.dart';
import 'package:http/http.dart' as http;
import '../../utils/backend_calls.dart';
import 'dart:convert';

class OrderModel extends Model {

  BackendCalls backendCalls = BackendCalls();
  List<OrderItem> _orderItems = [];
  bool _isLoading = false;
  bool _areItemsFetched = false;

  
  void fetchOrderItems(String userId){
    if(_areItemsFetched == false){
      _areItemsFetched = true;
      _isLoading = true;
      notifyListeners();
      backendCalls.getOrderItems(userId).then((http.Response response){
        var data = json.decode(response.body);
        print(data);
        data.forEach((data){
          _orderItems.add(OrderItem.fromJson(data));
        });
        _isLoading = false;
        notifyListeners(); 
      });
    }
  }

  List<OrderItem> get orderItems{
    return List.from(_orderItems);
  }

  bool get isFetchingOrderItems{
    return _isLoading;
  }
}