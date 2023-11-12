import 'package:flutter/material.dart';
import 'package:new_app/models/category_model/category_model.dart';
import 'package:new_app/modules/home_screen/news_fragment.dart';
import 'package:new_app/modules/home_screen/tabs_controller.dart';
import 'package:new_app/shared/netwrok/remote/api_manager.dart';

import '../../models/sources_response/SoruceResponse.dart';
import 'categories_fragment.dart';
import 'home_drawer.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home Screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: Text(
          "News Api"
        ),
      ),
      drawer: HomeDrawer(onClicked),
      body:selectedCategory == null ?CategoriesFragment(callBackGategory) :
      NewsFragment(selectedCategory!),
    );
  }

  CategoryModel ?selectedCategory;
  callBackGategory(CategoryModel category){
    selectedCategory = category;
    setState(() {

    });
  }
  onClicked(int itemClicked){
    Navigator.of(context).pop();
    if(itemClicked == HomeDrawer.CATEGORY){
      selectedCategory=null;
      setState(() {

      });
    }else if(itemClicked == HomeDrawer.SETTINGS){}

  }
}
