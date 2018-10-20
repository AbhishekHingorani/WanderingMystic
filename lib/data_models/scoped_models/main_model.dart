import "package:scoped_model/scoped_model.dart";

import './package_items_model.dart';
import './product_items_model.dart';

class MainModel extends Model with PackageItemsModel, ProductItemsModel{}