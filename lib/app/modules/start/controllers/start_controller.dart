import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class StartController extends GetxController {
  late final PageController pageController;
  RxInt currentPageIndex = 0.obs;


  @override
  void onInit() {
    pageController = PageController(initialPage: 0,keepPage: true);
    super.onInit();
  }


  void updatePageIndex({required int index}){
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }
}
