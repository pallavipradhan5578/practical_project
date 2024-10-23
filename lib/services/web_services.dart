import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:practical_project/utils/api_url.dart';

class WebServices{

  static Future<dynamic>getMethod({required String routeUrl})async{
    Uri url=Uri.parse(ApiUrls.baseUrl+routeUrl);
    var response=await http.get(url);
    if(response.statusCode==200){
      print("Hey data has been fetched successfully");
      return json.decode(response.body);
    }else{
      print("sorry something went wrong, please try again");
      return null;
    }
  }
}