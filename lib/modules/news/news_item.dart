import 'package:flutter/material.dart';
import 'package:new_app/models/news_response/NewsResponse.dart';

class NewsItem extends StatelessWidget {
  Articles articles;
  NewsItem(this.articles);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:
        [
          Container(

            clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.network(
                  articles.urlToImage ?? "",)),
          SizedBox(height: 10,),
          Text(
            articles.author ?? "",
            style:Theme.of(context).textTheme.bodySmall
          ),
          SizedBox(height: 10,),
          Text(
            articles.title ?? "",
              style:Theme.of(context).textTheme.bodyMedium

          ),
          SizedBox(height: 10,),
          Text(
            articles.publishedAt ?? "",
              style:Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.end,

          ),
          SizedBox(height: 10,),

        ],
      ),
    );
  }
}
