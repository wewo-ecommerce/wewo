import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:new_wewo/app/data/models/product_model.dart';

class ShoppingCartController extends GetxController {
  RxList<Product> products = <Product>[].obs;
  RxBool isAtBottom = false.obs;
  RxDouble total = 0.0.obs;
  late final ScrollController scrollController;
  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    scrollController.addListener(_scrollListener);
    final List<Product> _productsdemo = <Product>[
      Product(
        id: 1,
        title: 'Product 1',
        description: 'Description 1',
        price: 100,
        imageUrl: 'https://picsum.photos/200/300',
        quantity: 1,
      ),
      Product(
        id: 2,
        title: 'Product 2',
        description: 'Description 2',
        price: 200,
        imageUrl: 'https://picsum.photos/200/300',
        quantity: 1,
      ),
      Product(
        id: 3,
        title: 'Product 3',
        description: 'Description 3',
        price: 300,
        imageUrl: 'https://picsum.photos/200/300',
        quantity: 1,
      ),
      Product(
        id: 4,
        title: 'Product 4',
        description: 'Description 4',
        price: 400,
        imageUrl: 'https://picsum.photos/200/300',
        quantity: 1,
      ),
      Product(
        id: 5,
        title: 'Product 5',
        description: 'Description 5',
        price: 500,
        imageUrl: 'https://picsum.photos/200/300',
        quantity: 1,
      ),
      Product(
        id: 6,
        title: 'Product 6',
        description: 'Description 6',
        price: 600,
        imageUrl: 'https://picsum.photos/200/300',
        quantity: 1,
      ),
      Product(
        id: 7,
        title: 'Product 7',
        description: 'Description 7',
        price: 700,
        imageUrl: 'https://picsum.photos/200/300',
        quantity: 1,
      ),
      Product(
        id: 8,
        title: 'Product 8',
        description: 'Description 8',
        price: 800,
        imageUrl: 'https://picsum.photos/200/300',
        quantity: 1,
      ),
    ];
    products.addAll(_productsdemo);
    total.value = products.fold(
        0,
        (double previousValue, Product element) =>
            previousValue + element.price);
  }

  void _scrollListener() {
    isAtBottom.value = scrollController.hasClients &&
        scrollController.position.atEdge &&
        scrollController.offset != 0;
  }

  void updateQuantity(Product product, int quantity) {
    final int index = products.indexWhere((Product element) =>
        element.id == product.id && element.title == product.title);
    if (index != -1) {
      products[index].quantity = quantity;
      total.value = products.fold(
          0,
          (double previousValue, Product element) =>
              previousValue + element.price * element.quantity);
    }
  }

  void removeProduct(Product product) {
    final int index = products.indexWhere((Product element) =>
        element.id == product.id && element.title == product.title);
    if (index != -1) {
      products.removeAt(index);
      total.value = products.fold(
          0,
          (double previousValue, Product element) =>
              previousValue + element.price * element.quantity);
    }
  }
}
