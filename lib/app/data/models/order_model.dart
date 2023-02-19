import 'package:new_wewo/app/data/models/product_model.dart';

class Order {
  String status;
  Product product;
  Order({required this.product, required this.status});
}
