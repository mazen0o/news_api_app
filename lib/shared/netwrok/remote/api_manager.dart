import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:new_app/models/news_response/NewsResponse.dart';
import 'package:new_app/models/sources_response/SoruceResponse.dart';
import 'package:new_app/shared/component/constant/constant.dart';
class APiManager{

  static Future<SoruceResponse> getResponse(String CategoryItem)async{
    var uri = Uri.https(BASEURL, "/v2/top-headlines/sources",
        {"apiKey" : APIKEY,
      "category":CategoryItem
    });

    var response = await http.get(uri);
    try{
      var bodyString =response.body;
      var json =jsonDecode(bodyString);
      var soruceResponse = SoruceResponse.fromJson(json);
      return soruceResponse;
    }
    catch(e){
      throw e;

    }


  }
  
  static Future<NewsResponse>newsResponse(Sources source)async{
    var uri =  Uri.https(BASEURL,"/v2/everything",{"apiKey" : APIKEY,"sources":source.id});
   try{
     var response =await http.get(uri);
     var getBody = response.body;
     var json = jsonDecode(getBody);
     var newsResponse = NewsResponse.fromJson(json);
     return newsResponse;
   }catch(e){
     throw e;
   }
  }

}