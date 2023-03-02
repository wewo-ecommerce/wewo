import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  final currentPage = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void updateMenuPage({required int pageIndex}){
    currentPage.value = pageIndex;
  }
}
