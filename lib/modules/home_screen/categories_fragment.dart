import 'package:flutter/material.dart';
import 'package:new_app/models/category_model/category_model.dart';

import 'category_item.dart';

class CategoriesFragment extends StatelessWidget {
  var categoriesList = CategoryModel.getCategories();
  Function callBack;


  CategoriesFragment(this.callBack);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: 6,
          itemBuilder: (c,index){
            return InkWell(
              onTap: (){
                callBack(categoriesList[index]);
              },
                child: CategoryItem(categoriesList[index],index));
          }),
    );
  }
}
