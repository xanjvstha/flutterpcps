import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:loginpage/model/newsapi.dart';
import 'package:loginpage/static.dart';

class GetApi{
  static Future<NewsApi?> getnewsdata() async {
    try{
      String apikey = "a25a0c0b883c4f389ff5c23da0f9dfea";
      var url = Uri.http(StaticValue.baseurl, '/v2/everything',
          {"domains":"wsj.com", "apiKey":apikey});
      var response = await http.get(url);
      var jsonResponse = convert.jsonDecode(response.body);
      NewsApi data = NewsApi.fromJson(jsonResponse);
      return data;
    }
    catch(e){
      return null;
    }
    return null;
  }
}