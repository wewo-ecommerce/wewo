import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/data/models/category_model.dart';
import 'package:new_wewo/app/data/models/product_model.dart';
import 'package:new_wewo/app/data/models/store_model.dart';
import 'package:new_wewo/app/data/usercases/store_usercase.dart';

class StoreViewController extends GetxController {
  RxList<CategoryModel> categories = <CategoryModel>[].obs;
  RxList<Store> stores = <Store>[].obs;
  @override
  void onInit() {
    super.onInit();
    fetchAllStore();
    categories.addAll(
      [
        CategoryModel(
          id: '11234',
          title: 'Category 1',
          products: <Product>[
            Product(
              id: 1,
              title: 'Nước tẩy trang làm sạch da mặt 200ml, sạch sâu',
              description: 'Description 1',
              price: 100,
              imageUrl: 'https://picsum.photos/200/300',
              quantity: 1,
              isFavorite: true,
            ),
            Product(
              id: 2,
              title: 'Banh chocopie hộp 12 cái',
              description: 'Description 2',
              price: 200,
              imageUrl: 'https://picsum.photos/200/300',
              quantity: 1,
              isFavorite: true,
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
          ],
        ),
        CategoryModel(
          id: '223456',
          title: 'Category 2',
          products: <Product>[
            Product(
              id: 7,
              title: 'Product 1',
              description: 'Description 1',
              price: 100,
              imageUrl: 'https://picsum.photos/200/300',
              quantity: 1,
            ),
            Product(
              id: 8,
              title: 'Product 2',
              description: 'Description 2',
              price: 200,
              imageUrl: 'https://picsum.photos/200/300',
              quantity: 1,
            ),
            Product(
              id: 9,
              title: 'Product 3',
              description: 'Description 3',
              price: 300,
              imageUrl: 'https://picsum.photos/200/300',
              quantity: 1,
            ),
            Product(
              id: 10,
              title: 'Product 4',
              description: 'Description 4',
              price: 400,
              imageUrl: 'https://picsum.photos/200/300',
              quantity: 1,
            ),
            Product(
              id: 11,
              title: 'Product 5',
              description: 'Description 5',
              price: 500,
              imageUrl: 'https://picsum.photos/200/300',
              quantity: 1,
            ),
          ],
        )
      ],
    );
  }

  void fetchAllStore() {
    StoreUseCase().fetchAllStore().then((value) {
      stores.addAll(value);
    });
  }
}
