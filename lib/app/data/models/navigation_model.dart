import 'package:get/get_navigation/src/routes/transitions_type.dart';

class NavigationModel{
  static final Map<String,NavigationModel> urls = {};
  final String iconPath;
  final String name,url;
  final GetPageBuilder page;

  NavigationModel(this.name,this.iconPath,this.url,this.page){
    urls[url] = this;
  }
}