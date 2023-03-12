import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/data/datasource/navi_item.dart';
import 'package:new_wewo/app/modules/start/controllers/start_controller.dart';
import 'package:new_wewo/app/modules/widgets/app_bottom_menu.dart';

class StartView extends GetView<StartController> {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => AppBottomMenu(
          navItems: appNavPages,
          currentPage: controller.currentPageIndex.value,
          onPageChanged: (pageChange) {
            controller.updatePageIndex(index: pageChange);
          },
        ),
      ),
      body: PageView.builder(
        controller: controller.pageController,
        physics: const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
        onPageChanged: (indexChanged) {
          controller.updatePageIndex(index: indexChanged);
        },
        itemCount: appNavPages.length,
        itemBuilder: (context, pageIndex) {
          return appNavPages[pageIndex].page();
        },
      ),
    );
  }
}
