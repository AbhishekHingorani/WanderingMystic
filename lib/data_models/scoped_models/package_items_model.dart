import "package:scoped_model/scoped_model.dart";
import '../models/package_item_schema.dart';

class PackageItemsModel extends Model {

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
    _packages.add(temp);
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

