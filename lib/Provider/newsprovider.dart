import 'package:flutter/cupertino.dart';
import 'package:test_holistic/Models/newsmodel.dart';
import 'package:test_holistic/Services/newsService.dart';

class NewsProvider extends ChangeNotifier{
  NewsModel?newsModel;

  Future<void> fetchData({required String categoryName}) async{
     newsModel = await NewsService.gitService(categoryName: categoryName);
     notifyListeners();
  }
}