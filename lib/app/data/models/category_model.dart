import 'package:new_wewo/app/data/models/product_model.dart';

class CategoryModel {
  final String id;
  final String title;
  final List<Product> products;

  CategoryModel({
    required this.id,
    required this.title,
    required this.products,
  });
}
