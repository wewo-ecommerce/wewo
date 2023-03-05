import 'package:get/get.dart';
import 'package:new_wewo/app/data/models/order_model.dart';
import 'package:new_wewo/app/data/models/product_model.dart';

class OrderHistoryController extends GetxController {
  RxList<Order> orders = <Order>[].obs;
  RxDouble totalPrice = 0.0.obs;
  @override
  void onInit() {
    super.onInit();
    final List<Order> _orderhistory = <Order>[
      Order(
          code: 'LQNSU346JK',
          items: [
            Product(
              id: 1,
              title: 'Product 1',
              description: 'Description 1',
              price: 150,
              imageUrl: 'https://picsum.photos/200/300',
              quantity: 1,
            ),
            Product(
              id: 2,
              title: 'Product 2',
              description: 'Description 2',
              price: 120,
              imageUrl: 'https://picsum.photos/200/300',
              quantity: 1,
            ),
            Product(
              id: 7,
              title: 'Product 7',
              description: 'Description 7',
              price: 100,
              imageUrl: 'https://picsum.photos/200/300',
              quantity: 1,
            )
          ],
          status: 'Commit'),
      Order(
          code: 'LENSU386JK',
          items: [
            Product(
              id: 3,
              title: 'Product 3',
              description: 'Description 3',
              price: 400,
              imageUrl: 'https://picsum.photos/200/300',
              quantity: 1,
            ),
            Product(
              id: 8,
              title: 'Product 8',
              description: 'Description 8',
              price: 100,
              imageUrl: 'https://picsum.photos/200/300',
              quantity: 1,
            )
          ],
          status: 'Delivered'),
      Order(
          code: 'LQNSU346OP',
          items: [
            Product(
              id: 9,
              title: 'Product 9',
              description: 'Description 9',
              price: 100,
              imageUrl: 'https://picsum.photos/200/300',
              quantity: 1,
            ),
            Product(
              id: 10,
              title: 'Product 10',
              description: 'Description 10',
              price: 800,
              imageUrl: 'https://picsum.photos/200/300',
              quantity: 1,
            )
          ],
          status: 'Completed'),
      Order(
          code: 'LQNSU3489K',
          items: [
            Product(
              id: 6,
              title: 'Product 6',
              description: 'Description 6',
              price: 200,
              imageUrl: 'https://picsum.photos/200/300',
              quantity: 1,
            ),
          ],
          status: 'Completed'),
      Order(
          code: 'PONSU346JK',
          items: [
            Product(
              id: 5,
              title: 'Product 5',
              description: 'Description 5',
              price: 100,
              imageUrl: 'https://picsum.photos/200/300',
              quantity: 1,
            )
          ],
          status: 'Delivered'),
    ];
    orders.addAll(_orderhistory);
  }

  double totalEachCart(List<Order> order, int index) {
    return totalPrice.value = order[index]
        .items
        .fold(0, (previousValue, element) => previousValue + element.price);
  }
}
