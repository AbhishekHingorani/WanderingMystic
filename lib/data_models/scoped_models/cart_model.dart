import "package:scoped_model/scoped_model.dart";
import '../models/cart_item.dart';
import '../models/list_product.dart';
import 'package:http/http.dart' as http;
import '../../utils/backend_calls.dart';
import 'dart:convert';

class CartModel extends Model {

  BackendCalls backendCalls = BackendCalls();
  List<CartItem> _cartItems = [];
  bool _isProductBeingAddedToCart = false;
  bool _isLoading = false;
  bool _areItemsFetched = false;

  void fetchCartItems(String userId){
    if(_areItemsFetched == false){
      _areItemsFetched = true;
      _isLoading = true;
      notifyListeners();
      backendCalls.getCartItems(userId).then((http.Response response){
        var data = json.decode(response.body);
        print("data:");
        print(data);
        data.forEach((data){
          _cartItems.add(CartItem.fromJson(data));
        });
        _isLoading = false;
        notifyListeners(); 
      });
    }
  }

  void addItemToCart(CartItem item) {
    _cartItems.add(item);
  }

  void addProductToCart(ListProduct product){
    if(_isProductBeingAddedToCart == false){
      _isProductBeingAddedToCart = true;
      notifyListeners();
      // backendCalls.addProductToCart(product.id).then((http.Response response){
      //   var data = json.decode(response.body);
      //   print(data);

        addItemToCart(CartItem(
          imageUrl: product.imageUrl,
          price: double.parse(product.price),
          productId: product.id,
          productName: product.name,
          quantity: 1
        ));

        _isProductBeingAddedToCart = false;
        notifyListeners(); 
      //});
    }
  }

  void incrementItemQuantity(index){
    _cartItems[index].quantity++;
  }
  
  void decrementItemQuantity(index){
    if(_cartItems[index].quantity > 1)
      _cartItems[index].quantity--;
  }

  bool get isProductBeingAddedToCart{
    return _isProductBeingAddedToCart;
  }

  List<CartItem> get cartItems{
    return List.from(_cartItems);
  }

  bool get isFetchingCartItems{
    return _isLoading;
  }

  int get cartItemsCount {
    return _cartItems.length;
  }
}