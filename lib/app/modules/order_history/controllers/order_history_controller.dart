import 'package:get/get.dart';
import 'package:new_wewo/app/data/models/order_model.dart';
import 'package:new_wewo/app/data/models/product_model.dart';

class OrderHistoryController extends GetxController {
  RxList<Order> orders = <Order>[].obs;
  @override
  void onInit() {
    super.onInit();
    final List<Order> _orderhistory = <Order>[
      Order(
          product: Product(
            id: 1,
            title: 'Product 1',
            description: 'Description 1',
            price: 100,
            imageUrl: 'https://picsum.photos/200/300',
            quantity: 1,
          ),
          status: 'Commit'),
      Order(
          product: Product(
            id: 2,
            title: 'Product 2',
            description: 'Description 2',
            price: 100,
            imageUrl: 'https://picsum.photos/200/300',
            quantity: 1,
          ),
          status: 'Delivered'),
      Order(
          product: Product(
            id: 3,
            title: 'Product 3',
            description: 'Description 3',
            price: 100,
            imageUrl: 'https://picsum.photos/200/300',
            quantity: 1,
          ),
          status: 'Completed'),
      Order(
          product: Product(
            id: 6,
            title: 'Product 6',
            description: 'Description 6',
            price: 100,
            imageUrl: 'https://picsum.photos/200/300',
            quantity: 1,
          ),
          status: 'Completed'),
      Order(
          product: Product(
            id: 5,
            title: 'Product 5',
            description: 'Description 5',
            price: 100,
            imageUrl: 'https://picsum.photos/200/300',
            quantity: 1,
          ),
          status: 'Delivered'),
      Order(
          product: Product(
            id: 7,
            title: 'Product 7',
            description: 'Description 7',
            price: 100,
            imageUrl: 'https://picsum.photos/200/300',
            quantity: 1,
          ),
          status: 'Picked-up')
    ];
    orders.addAll(_orderhistory);
  }
}
