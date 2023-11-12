import 'package:flutter/material.dart';
import 'package:new_app/models/category_model/category_model.dart';
import 'package:new_app/modules/home_screen/tabs_controller.dart';

import '../../models/sources_response/SoruceResponse.dart';
import '../../shared/netwrok/remote/api_manager.dart';

class NewsFragment extends StatelessWidget {
  CategoryModel categoryModel;
  NewsFragment(this.categoryModel);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: FutureBuilder<SoruceResponse>(
        future: APiManager.getResponse(categoryModel.id),
        builder: (context , snapShot){
          /// handle errors
          if(snapShot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          if(snapShot.hasError){
            return Column(
              children: [
                Text(
                  "SomeThing Went Error",

                ),
                ElevatedButton(onPressed: (){}, child: Text("Try again"))
              ],
            );
          }
          if("ok" != snapShot.data!.status){
            return Column(
              children: [
                Text(
                  "SomeThing Went Error",

                ),
                ElevatedButton(onPressed: (){}, child: Text("Try again"))
              ],
            );
          }


          /// i have data
          var sourcesList = snapShot.data?.sources ?? [] ;
          return TabsController(sourcesList);

        },

      ),
    );
  }
}
