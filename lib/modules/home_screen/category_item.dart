import 'package:flutter/material.dart';
import 'package:new_app/models/category_model/category_model.dart';

class CategoryItem extends StatelessWidget {
  CategoryModel categoryModel;
  int index;
  CategoryItem(this.categoryModel,this.index);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(12),
      height: 280,
      decoration: BoxDecoration(
        color: categoryModel.color,
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(12) ,
          topRight: Radius.circular(12),
          bottomLeft: index%2==0 ? Radius.circular(0) :Radius.circular(12),
          bottomRight:  index%2!=0 ? Radius.circular(0) :Radius.circular(12),
        ),
      ),
      child: Column(
        children:
        [
          Image.asset(categoryModel.image, height: 120,fit: BoxFit.cover,),
          SizedBox(height: 5,),
          Text(categoryModel.title,style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),),
        ],
      ),
    );
  }
}
