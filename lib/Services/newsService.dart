import 'package:dio/dio.dart';
import 'package:test_holistic/Models/newsmodel.dart';
class NewsService{
static Dio dio = Dio();

static Future<NewsModel>gitService({required String categoryName}) async{
  String url = "https://newsapi.org/v2/top-headlines?country=us&category=$categoryName&apiKey=7c64a4b2debe40168c74926def260cdf";
var response = await dio.get(url);
     if(response.statusCode == 200){
       print(response.data);
     return NewsModel.fromjson(response.data);
     }
     else{
       throw Exception("Failed to load task details");
     }
}
}