import 'package:flutter/cupertino.dart';
import 'package:new_wewo/app/common/util/app_icon.dart';
import 'package:new_wewo/app/data/models/navigation_model.dart';
import 'package:new_wewo/app/modules/home/views/home_view.dart';
import 'package:new_wewo/app/routes/app_pages.dart';

final appNavPages = [
  NavigationModel('Home', AppIcons.home, Routes.HOME, () => const HomeView()),
  NavigationModel('Explore', AppIcons.search, 'Explore', () => const Placeholder()),
  NavigationModel('Cart', AppIcons.cart, 'Cart', () => const Placeholder()),
  NavigationModel('Offer', AppIcons.offer, 'Offer', () => const Placeholder()),
  NavigationModel('Account', AppIcons.user, 'Account', () => const Placeholder()),
];