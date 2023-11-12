import 'package:flutter/material.dart';
import 'package:new_app/models/sources_response/SoruceResponse.dart';
import '../../models/news_response/NewsResponse.dart';
import '../../shared/netwrok/remote/api_manager.dart';
import 'news_item.dart';

class NewsData extends StatelessWidget {
  Sources newsSource;
  NewsData(this.newsSource);

  @override
  Widget build(BuildContext context) {
    return   Container(
      child: FutureBuilder<NewsResponse>(
        future: APiManager.newsResponse(newsSource),
        builder:(context,snapShot){
          ///handling errors
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

          ///i have data
          var articlesList = snapShot.data?.articles ?? [];
          return ListView.builder(
            itemCount: articlesList.length,
            itemBuilder:(context,index){
              return NewsItem(articlesList[index]);
            } ,
          );

        } ,
      ),
    );
  }
}
