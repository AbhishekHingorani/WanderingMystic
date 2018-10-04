import "package:scoped_model/scoped_model.dart";
import '../models/package_item_schema.dart';
import 'package:http/http.dart' as http;
import '../../utils/backend_calls.dart';
import 'dart:convert';

class PackageItemsModel extends Model {

  BackendCalls backendCalls = BackendCalls();
  List<PackageItemSchema> _packages = [];
  int _selectedPackageIndex;

  PackageItemSchema temp = new PackageItemSchema(
    title: "VENTURE VARANASI", 
    subtitle: "SERENE FAMILY TRIP",
    price: "20,000",
    days: "3",
    nights: "2",
    imageUrl: "assets/images/varanasi.jpg"
  );

  PackageItemsModel(){
    //_packages.add(temp);
    
  }

  void fetchPackages(){
    print("asdasdasdasdasdasdasd");
    backendCalls.getPackages().then((http.Response response){
      var data = json.decode(response.body);
      data.forEach((data){
        _packages.add(PackageItemSchema.fromJson(data));
      });
      notifyListeners(); 
    });
  }

  List<PackageItemSchema> get packages{
    return List.from(_packages);
  }

  void addPackage(PackageItemSchema package) {
    _packages.add(package);
  }

  void addMorePackages() {
    _packages.add(temp);
    _packages.add(temp);
    _packages.add(temp);
  }

  void selectPackage(int index){
    _selectedPackageIndex = index;
  }
}

