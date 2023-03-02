import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/common/theme/layyuu_theme/color.dart';
import 'package:new_wewo/app/data/models/navigation_model.dart';

class AppBottomMenu extends StatelessWidget {
  final List<NavigationModel> navItems;
  final int currentPage;
  final Function(int) onPageChanged;

  const AppBottomMenu(
      {Key? key,
      required this.navItems,
      required this.currentPage,
      required this.onPageChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: currentPage,
        onTap: onPageChanged,
        items: List<BottomNavigationBarItem>.generate(
          navItems.length,
          (index) => BottomNavigationBarItem(
            icon: SvgPicture.asset(navItems[index].iconPath,
                color: index == currentPage
                    ? context.theme.colorScheme.primary
                    : null,),
            label: navItems[index].name,
          ),
        ),
    );
  }
}
