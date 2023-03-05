import 'package:new_wewo/app/data/models/product_model.dart';

class Order {
  String code;
  String status;
  List<Product> items;
  Order({required this.code, required this.items, required this.status});
}
